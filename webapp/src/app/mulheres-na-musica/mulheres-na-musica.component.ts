import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-mulheres-na-musica',
  templateUrl: './mulheres-na-musica.component.html',
  styleUrls: ['./mulheres-na-musica.component.scss']
})
export class MulheresNaMusicaComponent implements OnInit {

  public question;

  constructor() { }

  ngOnInit() {
  }

  public sendQuestion(){

    var question = document.getElementById('textarea').value;

    var string = `<article class="post">
    <div class="post__author">
        <figure class="author__picture">
                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" class="svg-inline--fa fa-user fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z"></path></svg>
        </figure>

        <p class="post__who">de <strong>@mafe</strong></p>
        <p class="post__date">Agora há pouco</p>
    </div>
    <div class="post__content">
        <p>${question}</p>
    </div>
    <div class="post__actions">
        <ul>
            <li class="action__like">
               <a (click)="increaseLike()">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="heart" class="svg-inline--fa fa-heart fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z"></path></svg>
                    <span class="likes__counter likes__counter1">0</span>  
                </a>
            </li>

            <li class="action__comments">
                <a href="">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="comment-medical" class="svg-inline--fa fa-comment-medical fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256 32C114.62 32 0 125.12 0 240c0 49.56 21.41 95 57 130.74C44.46 421.05 2.7 466 2.2 466.5A8 8 0 0 0 8 480c66.26 0 116-31.75 140.6-51.38A304.66 304.66 0 0 0 256 448c141.39 0 256-93.12 256-208S397.39 32 256 32zm96 232a8 8 0 0 1-8 8h-56v56a8 8 0 0 1-8 8h-48a8 8 0 0 1-8-8v-56h-56a8 8 0 0 1-8-8v-48a8 8 0 0 1 8-8h56v-56a8 8 0 0 1 8-8h48a8 8 0 0 1 8 8v56h56a8 8 0 0 1 8 8z"></path></svg>
                    <span class="comments__counter">0</span>  
                </a>
            </li>

            <li class="action__tags">
                <a class="tag" href="">#inclusao</a>
                <a class="tag" href="">#composicao</a>
            </li>
        </ul>
    </div>
</article>`;

    document.querySelector(".block__posts").insertAdjacentHTML('afterbegin',string);
  }

  public increaseLike(){
    document.querySelector('.likes__counter1').innerText = parseInt(document.querySelector('.likes__counter1').innerText) + 1;
  }

}
