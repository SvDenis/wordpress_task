jQuery(function($){

    /*$('#my-gallery-btn').click(open_media_editor);

    function open_media_editor(){
        if (this.window === undefined) {
            this.window = wp.media({
                title: 'Insert media item',
                frame: 'post',
                library: {type: 'image'},
                multiple: true,
                editing: true,
            });

            var self = this;
            this.window.on('select', function() {
                console.log();
                var first = self.window.state().get('selection').first().toJSON();
                var template = document.getElementById('attachments['+ first.id +'][img_template]').value;
                wp.media.editor.insert('[gallery ids="' + first.id + '" template="' + template + '"]');
            });

        }

        this.window.open();
        return false;
    }*/
    wp.media.MyGallery = {

        frame: function() {
            if ( this._frame )
                return this._frame;

            this._frame = wp.media({
                id:         'my-frame',
                frame:      'post',
                library: {
                    type: 'image',
                },
                state:      'gallery-edit',
                title:      'Insert media item',
                editing:    true,
                multiple:   true,

            });
            wp.media.view.Settings.Gallery = wp.media.view.Settings.Gallery.extend({
                template: function(view){
                    return wp.media.template('gallery-settings')(view)
                        + wp.media.template('custom-gallery-setting')(view);
                }
            });

            this._frame.on( 'update',
                function() {
                    var controller = wp.media.MyGallery._frame.states.get('gallery-edit');
                    var library = controller.get('library');
                    // Need to get all the attachment ids for gallery
                    var ids = library.pluck('id');
                    var str_ids = "";
                    for(id in ids) {
                        if(str_ids)str_ids += ",";
                        str_ids += ids[id];
                    }
                    var template = document.getElementById('img_template').value;
                    wp.media.editor.insert('[gallery ids="' + str_ids + '" template="' + template + '"]');

                    // send ids to server
                    /*wp.media.post( 'my-gallery-update', {
                        nonce:      wp.media.view.settings.post.nonce,
                        html:       wp.media.MyGallery.link,
                        post_id:    wp.media.view.settings.post.id,
                        settings:   wp.media.view.settings,
                        ids:        ids
                    }).done( function() {
                        window.location = wp.media.MyGallery.link;
                    });*/

                });


            return this._frame;
        },

        init: function() {
            $('#my-gallery-btn').click( function( event ) {
                event.preventDefault();
                wp.media.MyGallery.frame().open();
            });
        },

    };

    $(document).ready(function(){
        $( wp.media.MyGallery.init );
    });

});