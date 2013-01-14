# This is a manifest file that'll be compiled into including all the files listed below.
# Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
# be included in the compiled file accessible from http://example.com/assets/application.js
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.

#= require jquery
#= require jquery_ujs
#= require ym_core
#= require ym_cms
#= require redactor
#= require_tree .


window.Redactor=
  init: ->
    $('textarea.redactor').redactor
      path:'/assets/redactor',
      imageUpload: '/redactor_uploads?file_type=image',
      imageGetJson: '/redactor_uploads',
      fileUpload: '/redactor_uploads?file_type=file',
      removeClasses: true,
      removeStyles: true,
      convertDivs: true,
      buttons: [
        'bold',
        'italic',
        'formatting',
        '|',
        'unorderedlist',
        'orderedlist',
        '|',
        'link',
        'image',
        'media',
        'file',
        'html',
        'fullscreen'
      ],
      buttonsCustom:
        media:
          title: RLANG.media
          func: 'showMedia'
        formatting:
          title: RLANG.formatting,
          func: 'show',
          dropdown:
            p:
              title: RLANG.paragraph,
              exec: 'formatblock'
            intro:
              title: 'Intro',
              func: 'formatblockIntro'
            blockquote:
              title: RLANG.quote,
              exec: 'formatblock',
              className: 'redactor_format_blockquote'
            pre:
              title: RLANG.code,
              exec: 'formatblock',
              className: 'redactor_format_pre'
            h1:
              title: RLANG.header1,
              exec: 'formatblock',
              className: 'redactor_format_h1'
            h2:
              title: RLANG.header2,
              exec: 'formatblock',
              className: 'redactor_format_h2'
            h3:
              title: RLANG.header3,
              exec: 'formatblock',
              className: 'redactor_format_h3'
            h4:
              title: RLANG.header4,
              exec: 'formatblock',
              className: 'redactor_format_h4'
      modal_media: "
        <form id='redactorInsertVideoForm'>
          <label>#RLANG.media_url</label>
          <input type='text' id='redactor_insert_media_url_input' style='width: 99%;'>
          <a href='#' data-toggle='collapse' data-target='#redactorMediaAdvanced'>Advanced options</a>
          <div id='redactorMediaAdvanced' class='collapse'>
            <label>#RLANG.media_html_code</label>
            <textarea id='redactor_insert_media_html_area' style='width: 99%; height: 120px;'></textarea>
          </div>
        </form>
        <div id='redactor_modal_footer'>
          <span class='redactor_btns_box'>
            <input type='button' id='redactor_insert_media_btn' class='btn btn-primary btn-small' value='#RLANG.insert'>
            <a href='javascript:void(null);' id='redactor_btn_modal_close'>
            #RLANG.cancel
            </a>
          </span>
        </div>"