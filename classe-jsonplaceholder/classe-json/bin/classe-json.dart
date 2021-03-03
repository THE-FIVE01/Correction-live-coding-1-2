//  importation de classes

import 'dart:html';

import '../lib/class-posts.dart';
import '../lib/class-comments.dart';
import '../lib/class-photos.dart';
import '../lib/class-albums.dart';
import '../lib/class-todo.dart';
import '../lib/class-users.dart';
void main(List<String> arguments) {
  
  // Création d'instances de classe Posts
  final post1 = Posts(userId: 1, id: 1, title: 'sunt aut facere repellat provident occaecati', body: 'quia et suscipit suscipit  expedita et cum reprehenderit');
  final post2 = Posts(userId: 1, id: 2, title: 'qui est esse', body: 'est rerum tempore vitae sequi sint nihil reprehenderit dolor beatae ea dolores neque');
  final post3 = Posts(userId: 1, id: 3, title: 'ea molestias quasi exercitationem', body: 'et iusto sed quo iure voluptatem occaecati omnis eligendi aut');
  final post4 = Posts(userId: 1, id: 4, title: 'eum et est occaecati', body: 'ullam et saepe reiciendis voluptatem adipisci sit amet autem assumenda');
  final post5 = Posts(userId: 1, id: 5, title: 'nesciunt quas odio', body: 'repudiandae veniam quaerat sunt sed alias aut fugiat sit autem');
  final post6 = Posts(userId: 1, id: 6, title: 'sunt aut facere repellat provident occaecati', body: 'quia et ssint nihil reprehenderit dolor reprehenderit');
  final post7 = Posts(userId: 1, id: 7, title: 'qui est esse', body: 'est rerum tempore vitae sequi sint nihil  occaecati omnis eligendibeatae ea dolores');
  final post8 = Posts(userId: 1, id: 8, title: 'ea molestias quasi exercitationem', body: 'et iusto sed quo iure voluptatem occaecati omnis eligendi aut');
  final post9 = Posts(userId: 1, id: 9, title: 'eum et est occaecati', body: 'ullam et saepe reiciendis voluptatem adipisci suscipit  expedita');
  final post10 = Posts(userId: 1, id: 10, title: 'nesciunt quas odio', body: 'repudiandae veniam quaerat sunt tempore vitae sequi sint ');

  // Création d'instances de classe Coments

  final comment1 = Comments(postId: 1, id: 1, name: 'id labore ex et quam laborum', email: 'Eliseo@gardner.biz', body: 'laudantium enim quasi est quidem magnam');
  final comment2 = Comments(postId: 1, id: 2, name: 'quo vero reiciendis velit similique earum', email: 'Jayne_Kuhic@sydney.com', body: 'est natus enim nihil est dolore');
  final comment3 = Comments(postId: 1, id: 3, name: 'odio adipisci rerum aut animi', email: 'Nikita@garfield.biz', body: 'quia molestiae reprehenderit quasi aspernatur');
  final comment4 = Comments(postId: 1, id: 4, name: 'alias odio sit', email: 'Lew@alysha.tv', body: 'on et atque occaecati deserunt quas');
  final comment5 = Comments(postId: 1, id: 5, name: 'vero eaque aliquid doloribus et culpa', email: 'Hayden@althea.bi', body: 'harum non quasi et ratione tempore iure ex');
  final comment6 = Comments(postId: 1, id: 6, name: 'et fugit eligendi deleniti quidem qui sint', email: 'Presley.Mueller@myrl.com', body: 'doloribus at sed quis culpa deserunt consectetur');
  final comment7 = Comments(postId: 1, id: 7, name: 'repellat consequatur praesentium vel', email: 'Dallas@ole.me', body: 'maiores sed dolores similique labore et inventore');
  final comment8 = Comments(postId: 1, id: 8, name: 'et omnis dolorem', email: 'Mallory_Kunze@marie.org', body: 'ut voluptatem corrupti velit ad voluptatem maior');
  final comment9 = Comments(postId: 1, id: 9, name: 'provident id voluptas', email: 'Meghan_Littel@rene.us', body: 'sapiente assumenda molestiae atque adipisci');
  final comment10 = Comments(postId: 1, id: 10, name: 'eaque et deleniti atque tenetur ut quo ut', email: 'Carmen_Keeling@caroline.name', body: 'voluptate iusto quis nobis reprehenderit');
  
  // Création d'instances de classe Albums

  final album1 = Albums(userId: 1, id: 1, title: 'quidem molestiae enim');
  final album2 = Albums(userId: 1, id: 2, title: 'sunt qui excepturi placeat culpa');
  final album3 = Albums(userId: 1, id: 3, title: 'omnis laborum odio');
  final album4 = Albums(userId: 1, id: 4, title: 'non esse culpa molestiae omnis sed optio');
  final album5 = Albums(userId: 1, id: 5, title: 'eaque aut omnis a');
  final album6 = Albums(userId: 1, id: 6, title: 'natus impedit quibusdam illo est');
  final album7 = Albums(userId: 1, id: 7, title: 'quibusdam autem aliquid et et quia');
  final album8 = Albums(userId: 1, id: 8, title: 'qui fuga est a eum');
  final album9 = Albums(userId: 1, id: 9, title: 'saepe unde necessitatibus rem');
  final album10 = Albums(userId: 1, id: 10, title: 'distinctio laborum qui');

  // Création d'instances de classe Photos

  final photo1 = Photos(albumId: 1, id: 1, title: 'accusamus beatae ad facilis cum similique qui sunt' , url: 'https://via.placeholder.com/600/92c952', thumbnailUrl: 'https://via.placeholder.com/150/92c952');
  final photo2 = Photos(albumId: 1, id: 2, title: 'reprehenderit est deserunt velit ipsam' , url: 'https://via.placeholder.com/600/771796', thumbnailUrl: 'https://via.placeholder.com/150/771796');
  final photo3 = Photos(albumId: 1, id: 3, title: 'officia porro iure quia iusto qui ipsa ut modi' , url: 'https://via.placeholder.com/600/24f355', thumbnailUrl: 'https://via.placeholder.com/150/24f355');
  final photo4 = Photos(albumId: 1, id: 4, title: 'culpa odio esse rerum omnis laboriosam' , url: 'https://via.placeholder.com/600/d32776', thumbnailUrl: 'https://via.placeholder.com/150/d32776');
  final photo5 = Photos(albumId: 1, id: 5, title: 'natus nisi omnis corporis facere molestiae' , url: 'https://via.placeholder.com/600/f66b97', thumbnailUrl: 'https://via.placeholder.com/150/f66b97');
  final photo6 = Photos(albumId: 1, id: 6, title: 'accusamus ea aliquid et amet sequi nemo' , url: 'https://via.placeholder.com/600/56a8c2', thumbnailUrl: 'https://via.placeholder.com/150/56a8c2');
  final photo7 = Photos(albumId: 1, id: 7, title: 'officia delectus consequatur vero aut veniam' , url: 'https://via.placeholder.com/600/b0f7cc', thumbnailUrl: 'https://via.placeholder.com/150/b0f7cc');
  final photo8 = Photos(albumId: 1, id: 8, title: 'aut porro officiis laborum odit ea laudantium corporis' , url: 'https://via.placeholder.com/600/54176f', thumbnailUrl: 'https://via.placeholder.com/150/54176f');
  final photo9 = Photos(albumId: 1, id: 9, title: 'qui eius qui autem sed' , url: 'https://via.placeholder.com/600/51aa97', thumbnailUrl: 'https://via.placeholder.com/150/51aa97');
  final photo10 = Photos(albumId: 1, id: 10, title: 'beatae et provident et ut vel' , url: 'https://via.placeholder.com/600/810b14', thumbnailUrl: 'https://via.placeholder.com/150/810b14');
  
  // Création d'instances de classe Todo

  final todo1 = Todo(userId: 1, id: 1, title: 'delectus aut autem', completed: false);
  final todo2 = Todo(userId: 1, id: 2, title: 'quis ut nam facilis et officia qui', completed: false);
  final todo3 = Todo(userId: 1, id: 3, title: 'fugiat veniam minus', completed: false);
  final todo4 = Todo(userId: 1, id: 4, title: 'et porro tempora', completed: true);
  final todo5 = Todo(userId: 1, id: 5, title: 'laboriosam mollitia et enim quasi adipisci quia provident illum', completed: false);
  final todo6 = Todo(userId: 1, id: 6, title: 'qui ullam ratione quibusdam voluptatem quia omnis', completed: false);
  final todo7 = Todo(userId: 1, id: 7, title: 'illo expedita consequatur quia in', completed: false);
  final todo8 = Todo(userId: 1, id: 8, title: 'quo adipisci enim quam ut ab', completed: true);
  final todo9 = Todo(userId: 1, id: 9, title: 'molestiae perspiciatis ipsa', completed: false);
  final todo10 = Todo(userId: 1, id: 10, title: 'illo est ratione doloremque quia maiores aut', completed: true);

  // Création d'instances de classe Users

  final user1 = Users(
      1,
     "Leanne Graham",
      "Bret",
      "Sincere@april.biz",
      Adresse("Kulas Light","Apt. 556","Gwenborough", "92998-3874", Geo(-37.3159, 81.1496)),
      "1-770-736-8031 x56442",
      "hildegard.org",
      Company("Romaguera-Crona","Multi-layered client-server neural-net","harness real-time e-markets"),
  );

  final user2 = Users(
      2,
     "Ervin Howell",
      "Antonette",
      "Shanna@melissa.tv",
      Adresse("Victor Plains","Suite 879","Wisokyburgh", "90566-7771", Geo(-43.9509, -34.4618)),
      "010-692-6593 x09125",
      "anastasia.net",
      Company("Deckow-Crist","Proactive didactic contingency","synergize scalable supply-chains"),
  );

  final user3 = Users(
      3,
     "Clementine Bauch",
      "Samantha",
      "Nathan@yesenia.net",
      Adresse("Douglas Extension","Suite 847","McKenziehaven", "59590-4157", Geo(-68.6102, -47.0653)),
      "1-463-123-4447",
      "ramiro.info",
      Company("DRomaguera-Jacobson","Face to face bifurcated interface","strategic applications"),
  );
  


}

