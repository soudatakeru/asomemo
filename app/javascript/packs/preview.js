if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
  document.addEventListener('DOMContentLoaded', function(){
    const ImageList = document.getElementById('image-list');
    // 選択した画像を表示する関数
    const createImageHTML = (blob) => {
      // 画像を表示するためのdiv要素を生成
     const imageElement = document.createElement('div');
     imageElement.setAttribute('class', "image-element")
     let imageElementNum = document.querySelectorAll('.image-element').length

     // 表示する画像を生成
     const blobImage = document.createElement('img');
     blobImage.setAttribute('src', blob);
     //ファイル選択ボタン生成
     const inputHTML = document.createElement('input')
     inputHTML.setAttribute('id', `event_image_${imageElementNum}`)
      inputHTML.setAttribute('name', 'event[images][]')
      inputHTML.setAttribute('type', 'file')
     
     
     // 生成したHTMLの要素をブラウザに表示させる
     imageElement.appendChild(blobImage);
     imageElement.appendChild(inputHTML)
     ImageList.appendChild(imageElement);

     inputHTML.addEventListener('change', (e) => {
      file = e.target.files[0];
      blob = window.URL.createObjectURL(file);

      createImageHTML(blob)
    })
   };

   document.getElementById('event_image').addEventListener('change', function(e){
     // 画像が表示されている場合のみ、すでに存在している画像を削除する
     

     const file = e.target.files[0];
     const blob = window.URL.createObjectURL(file);

     createImageHTML(blob);
    });
  });
}