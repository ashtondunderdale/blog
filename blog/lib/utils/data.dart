import '../models/filter.dart';
import '../models/post.dart';

List<Post> posts = [
  Post(
    title: "building a computer", 
    subTitle: "research and modelling the architecture", 
    category: "Computer Architecture",
    content: "This is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the contentThis is the content",
    date: "FEB 3 2024"
  ),
  Post(
    title: "designing the components", 
    subTitle: "unpacking the logic", 
    category: "Computer Architecture",
    content: "This is the content",
    date: "FEB 3 2024"
  ),
  Post(
    title: "creating a theoretical model", 
    subTitle: "creating a paper diagram of the computer adder", 
    category: "Computer Architecture",
    content: "This is the content",
    date: "FEB 3 2024"
  ),
  Post(
    title: "a blog post about maths", 
    subTitle: "", 
    category: "Mathematics",
    content: "This is the content",
    date: "FEB 3 2024"
  ),
];

List<Filter> filters = [
  Filter(name: "Computer Architecture"),
  Filter(name: "C#"),
  Filter(name: "Flutter"),
  Filter(name: "Mathematics"),
  Filter(name: "Philosophy"),
  Filter(name: "Quantum Mechanics"),
];