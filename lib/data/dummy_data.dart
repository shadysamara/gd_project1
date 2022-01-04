import 'package:project1/models/post_model.dart';
import 'package:project1/models/user_model.dart';

List<UserModel> users = [
  UserModel(
      name: 'Omar',
      imageUrl:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'),
  UserModel(
      name: 'Ahmed',
      imageUrl:
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
  UserModel(
      name: 'Ali',
      imageUrl:
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
  UserModel(
      name: 'Husam',
      imageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'),
  UserModel(
      name: 'Majd',
      imageUrl:
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'),
];

List<PostModel> posts = [
  PostModel(
      imageUrl:
          'https://images.unsplash.com/photo-1529079875474-0a66a1f176d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
      nofComments: 10,
      nofLikes: 20,
      nofViews: 30,
      postContent: 'jerusalem is the capital of palestine',
      postCreator: users[0]),
  PostModel(
      imageUrl:
          'https://images.unsplash.com/photo-1552423314-cf29ab68ad73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
      nofComments: 10,
      nofLikes: 20,
      nofViews: 30,
      postContent: 'this is my country',
      postCreator: users[1]),
  PostModel(
      imageUrl:
          'https://images.unsplash.com/photo-1587297069400-6cc5da81658a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
      nofComments: 10,
      nofLikes: 20,
      nofViews: 30,
      postContent: 'فلسطين بلدي',
      postCreator: users[0]),
  PostModel(
      imageUrl:
          'https://images.unsplash.com/photo-1466175743059-5393a020726c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
      nofComments: 10,
      nofLikes: 20,
      nofViews: 30,
      postContent: 'this is for testing',
      postCreator: users[2]),
  PostModel(
      imageUrl:
          'https://images.unsplash.com/photo-1614517453351-6c1522fc7a56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
      nofComments: 10,
      nofLikes: 20,
      nofViews: 30,
      postContent: 'this is for testing',
      postCreator: users[2]),
  PostModel(
      imageUrl:
          'https://images.unsplash.com/photo-1542743408-5fdf746fd87d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1932&q=80',
      nofComments: 10,
      nofLikes: 20,
      nofViews: 30,
      postContent: 'فلسطين بلدي',
      postCreator: users[3]),
  PostModel(
      imageUrl:
          'https://images.unsplash.com/photo-1529079688486-feaa9f516c9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      nofComments: 10,
      nofLikes: 20,
      nofViews: 30,
      postContent: 'this is my country',
      postCreator: users[0]),
  PostModel(
      imageUrl:
          'https://images.unsplash.com/photo-1480342740034-d149f44bbeac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1734&q=80',
      nofComments: 10,
      nofLikes: 20,
      nofViews: 30,
      postContent: 'jerusalem is the capital of palestine',
      postCreator: users[1]),
];
