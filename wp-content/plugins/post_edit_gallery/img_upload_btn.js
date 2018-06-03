jQuery(function($){

    $('#my-gallery-btn').click(open_media_editor);

    function open_media_editor(){
        if (this.window === undefined) {
            this.window = wp.media({
                title: 'Insert media item',
                library: {type: 'image'},
                multiple: false,
            });

            var self = this;
            this.window.on('select', function() {
                var first = self.window.state().get('selection').first().toJSON();
                var template = document.getElementById('attachments['+ first.id +'][img_template]').value;
                wp.media.editor.insert('[gallery ids="' + first.id + '" template="' + template + '"]');
            });

        }

        this.window.open();
        return false;
    }

});