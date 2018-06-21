!function (window, undefined) {
    "use strict";

    var $ = jQuery, win = $(window);

    //roll background image
    var roll = function (settings) {
        var defaults = {
            delay: 3000,
            images: []
        };

        var current = 0;

        settings = $.extend({}, defaults, settings);

        var init = function () {
            setInterval(show, settings.delay);
        };

        var show = function () {
            $('.advs').css('background', "url('" + settings.images[current] + "') no-repeat center top").animate({opacity: 'show'}, settings.delay);
            current++;
            if (current >= settings.images.length)current = 0;
        };

        init();
    };

    $.fn.extend({roll: roll});
}
(window);

!function ($) {
    "use strict";

    var Tab = function (element) {
        this.element = $(element)
    }

    Tab.prototype = {

        constructor: Tab

        , show: function () {
            var $this = this.element
                , $ul = $this.closest('ul:not(.dropdown-menu)')
                , selector = $this.attr('data-target')
                , previous
                , $target
                , e

            if (!selector) {
                selector = $this.attr('href')
                selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '')
            }

            if ( $this.parent('li').hasClass('active') ) return

            previous = $ul.find('.act:last a')[0]

            e = $.Event('show', {
                relatedTarget: previous
            })

            $this.trigger(e)

            if (e.isDefaultPrevented()) return

            $target = $(selector)

            this.activate($this.parent('li'), $ul)
            this.activate($target, $target.parent(), function () {
                $this.trigger({
                    type: 'shown'
                    , relatedTarget: previous
                })
            })
        }

        , activate: function ( element, container, callback) {
            var $active = container.find('> .act')
                , transition = callback
                && $.support.transition
                && $active.hasClass('fade')

            function next() {
                $active
                    .removeClass('act')
                    .find('> .dropdown-menu > .act')
                    .removeClass('act')

                element.addClass('act')

                if (transition) {
                    element[0].offsetWidth
                    element.addClass('in')
                } else {
                    element.removeClass('fade')
                }

                if ( element.parent('.dropdown-menu') ) {
                    element.closest('li.dropdown').addClass('act')
                }

                callback && callback()
            }

            transition ?
                $active.one($.support.transition.end, next) :
                next()

            $active.removeClass('in')
        }
    }

    var old = $.fn.tab

    $.fn.tab = function ( option ) {
        return this.each(function () {
            var $this = $(this)
                , data = $this.data('tab')
            if (!data) $this.data('tab', (data = new Tab(this)))
            if (typeof option == 'string') data[option]()
        })
    }

    $.fn.tab.Constructor = Tab

    $.fn.tab.noConflict = function () {
        $.fn.tab = old
        return this
    }

    $(document).on('click.tab.data-api', '[data-toggle="tab"], [data-toggle="pill"]', function (e) {
        e.preventDefault()
        $(this).tab('show')
    })

}(window.jQuery);