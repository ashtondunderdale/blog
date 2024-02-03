import 'package:blog/widgets/post.dart';

import 'models/filter.dart';

List<Post> posts = [
  const Post(
    title: "building a computer", 
    subTitle: "research and modelling the architecture", 
    category: "Computer Architecture",
    content: "This is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the content",
  ),
  const Post(
    title: "designing the components", 
    subTitle: "unpacking the logic", 
    category: "Computer Architecture",
    content: "This is the content",
  ),
  const Post(
    title: "creating a theoretical model", 
    subTitle: "creating a paper diagram of the computer adder", 
    category: "Computer Architecture",
    content: "This is the content",
  ),
];

List<Filter> filters = [
  Filter(name: "Computer Architecture"),
  Filter(name: "C#"),
  Filter(name: "Flutter"),
  Filter(name: "Mathematics"),
];