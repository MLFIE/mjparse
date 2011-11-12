var Photo = function(){
    var NO_IMAGE="img/nophoto.jpg";//�u��v�摜�Ȃ��v�Ə������摜

    //�ʐ^�^�C�v
    var TYPE_NONE = "none";//�I���Ȃ�
    var TYPE_BASE64 = "base64";//�B�eor�I���ɂ��Abase64�ŕێ����Ă���
    var TYPE_URL = "url";//url���w�肵�Ă���

    this.type = Photo.TYPE_NONE

    this.clear = function(){
        this.type=TYPE_NONE
        $("#img_url").val("");
        $("#img_top_photo").attr("src" , NO_IMAGE);
        $("#img_result_photo").attr("src", NO_IMAGE);
    };

    this.setUrlSrc = function(url,thumUrl,){
        this.type=TYPE_URL
        $("#img_url").val(url);
        $("#img_top_photo").attr("src" , thumUrl);
        $("#img_result_photo").attr("src", thumUrl);
    };

    this.setBase64Src = function(base64){
        this.type=TYPE_BASE64
        $("#img_top_photo").attr("src" , "data:image/jpeg;base64," + base64);
        $("#img_result_photo").attr("src",  "data:image/jpeg;base64," + base64);
    };

};