import 'package:clone_facebook/app/data/home/home_tab/home_post_model.dart';
import 'package:clone_facebook/app/data/home/home_tab/home_story_model.dart';
import 'package:clone_facebook/app/data/home/video_tab/video_post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var appbarIconList = [
    "assets/home.png",
    "assets/video_icon.png",
    "assets/friends.png",
    "assets/game_icon.png",
    "assets/notification.png",
    "assets/profile_avater.jpg",
  ];
  RxInt activeIndex = 0.obs;
  TextEditingController whatsOnMyMindController = TextEditingController();

  List<HomeStoryModel> storyModelList = [];
  List<HomePostModel> homePostDataList = [];
  List<VideoPostModel> videoPostDataList = [];

  @override
  void onInit() {
    super.onInit();
    initHomeStory();
    initHomePostData();
    initVideoPostData();
  }

  initHomeStory() {
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_1.jpg",
          title: "Evergreen Bangladesh"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_1.jpg",
          title: "Evergreen Bangladesh"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_2.jpg",
          title: "Spotlight Humanity"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_3.jpg", title: "Grameen Shokty"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_4.jpeg",
          title: "Evergreen Bangladesh"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_5.jpeg",
          title: "Spotlight Humanity"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_6.jpeg", title: "Grameen Shokty"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_7.jpeg",
          title: "Evergreen Bangladesh"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_8.jpg",
          title: "Spotlight Humanity"),
    );
    storyModelList.add(
      HomeStoryModel(
          imageUrl: "assets/home_story_image_9.jpg", title: "Grameen Shokty"),
    );
  }

  initHomePostData() {
    homePostDataList.add(
      HomePostModel(
        groupImage: "assets/home_story_image_1.jpg",
        userImage: "assets/man1.jpg",
        groupTitle: "Evergreen Bangladesh",
        userTitle: "Abdul Malek",
        duration: "5 h",
        postText:
            "Green Bangladesh is working to bring positive changes in the country. It is a non-profit organization with a vision to make a confident.",
        postImage: "assets/home_story_image_1.jpg",
        postLike: "5.8K Like",
        postComment: "3.5K comments",
        postShare: "1.1K share",
      ),
    );
    homePostDataList.add(
      HomePostModel(
        groupImage: "assets/home_story_image_2.jpg",
        userImage: "assets/man2.jpg",
        groupTitle: "Green Dhaka, BD",
        userTitle: "Malek Sadik",
        duration: "1 d",
        postText:
            "Air-conditioned Green Dhaka bus services between Abdullahpur and Motijheel via Badda in the capital has become hazardous due to overloading of passengers.",
        postImage: "assets/home_story_image_2.jpg",
        postLike: "1.8K Like",
        postComment: "560 comments",
        postShare: "102 share",
      ),
    );
    homePostDataList.add(
      HomePostModel(
        groupImage: "assets/home_story_image_3.jpg",
        userImage: "assets/man3.jpg",
        groupTitle: "Dom Inn Developers",
        userTitle: "Jhon deo",
        duration: "2 d",
        postText:
            "DOM-INNO Builders Limited is one of the best real estate developer companies in Bangladesh since 2002. The selection of a convenient Projects Location, Application of State-of-the-art technology",
        postImage: "assets/home_story_image_3.jpg",
        postLike: "5.1K Like",
        postComment: "2.1K comments",
        postShare: "2.5K share",
      ),
    );
    homePostDataList.add(
      HomePostModel(
        groupImage: "assets/home_story_image_4.jpeg",
        userImage: "assets/man4.jpg",
        groupTitle: "World Developers",
        userTitle: "A K M Khan",
        duration: "2 h",
        postText:
            "Welcome to the WeAreDevelopers World Congress, recognized by many as the world's flagship event for developers and tech decision-makers.",
        postImage: "assets/home_story_image_4.jpeg",
        postLike: "505.8K Like",
        postComment: "103.5K comments",
        postShare: "10.5K share",
      ),
    );
    homePostDataList.add(
      HomePostModel(
        groupImage: "assets/home_story_image_5.jpeg",
        userImage: "assets/man5.jpg",
        groupTitle: "South Dakota",
        userTitle: "K H M Saif",
        duration: "3 h",
        postText:
            "South Dakota is an expansive, sparsely populated midwestern U.S. state where rolling prairies give way to the dramatic Black Hills National Forest. Black Hills is home to 2 historical monuments carved right into towering granite peaks.",
        postImage: "assets/home_story_image_5.jpeg",
        postLike: "2.8K Like",
        postComment: "1.5K comments",
        postShare: "1.2K share",
      ),
    );
  }

  initVideoPostData() {
    videoPostDataList.add(
      VideoPostModel(
          groupImage: "assets/home_story_image_1.jpg",
          groupTitle: "Evergreen Bangladesh",
          dateTime: "16-01-2024",
          postText:
              "Green Bangladesh is working to bring positive changes in the country. It is a non-profit organization with a vision to make a confident.",
          assetVideoUrl: "assets/video/video_1.mp4",
          postLike: "5.8K Like",
          postComment: "3.5K comments",
          postShare: "1.1K share",
          postView: "1.6M view"),
    );
    videoPostDataList.add(
      VideoPostModel(
          groupImage: "assets/home_story_image_2.jpg",
          groupTitle: "Green Dhaka, BD",
          dateTime: "20-01-2024",
          postText:
              "Air-conditioned Green Dhaka bus services between Abdullahpur and Motijheel via Badda in the capital has become hazardous due to overloading of passengers.",
          assetVideoUrl: "assets/video/video_2.mp4",
          postLike: "5.8K Like",
          postComment: "3.5K comments",
          postShare: "1.1K share",
          postView: "1.6M view"),
    );
    videoPostDataList.add(
      VideoPostModel(
          groupImage: "assets/home_story_image_3.jpg",
          groupTitle: "Dom Inn Developers",
          dateTime: "25-01-2024",
          postText:
              "DOM-INNO Builders Limited is one of the best real estate developer companies in Bangladesh since 2002. The selection of a convenient Projects Location, Application of State-of-the-art technology",
          assetVideoUrl: "assets/video/video_3.mp4",
          postLike: "5.8K Like",
          postComment: "3.5K comments",
          postShare: "1.1K share",
          postView: "1.6M view"),
    );
    videoPostDataList.add(
      VideoPostModel(
          groupImage: "assets/home_story_image_4.jpeg",
          groupTitle: "World Developers",
          dateTime: "28-01-2024",
          postText:
              "Welcome to the WeAreDevelopers World Congress, recognized by many as the world's flagship event for developers and tech decision-makers.",
          assetVideoUrl: "assets/video/video_4.mp4",
          postLike: "5.8K Like",
          postComment: "3.5K comments",
          postShare: "1.1K share",
          postView: "1.6M view"),
    );
    videoPostDataList.add(
      VideoPostModel(
          groupImage: "assets/home_story_image_5.jpeg",
          groupTitle: "South Dakota",
          dateTime: "30-01-2024",
          postText:
              "South Dakota is an expansive, sparsely populated midwestern U.S. state where rolling prairies give way to the dramatic Black Hills National Forest. Black Hills is home to 2 historical monuments carved right into towering granite peaks.",
          assetVideoUrl: "assets/video/video_5.mp4",
          postLike: "5.8K Like",
          postComment: "3.5K comments",
          postShare: "1.1K share",
          postView: "1.6M view"),
    );
    videoPostDataList.add(
      VideoPostModel(
          groupImage: "assets/home_story_image_6.jpeg",
          groupTitle: "Evergreen Bangladesh",
          dateTime: "02-02-2024",
          postText:
              "South Dakota 222 is an expansive, sparsely populated midwestern U.S. state where rolling prairies give way to the dramatic Black Hills National Forest. Black Hills is home to 2 historical monuments carved right into towering granite peaks.",
          assetVideoUrl: "assets/video/video_6.mp4",
          postLike: "5.8K Like",
          postComment: "3.5K comments",
          postShare: "1.1K share",
          postView: "1.6M view"),
    );
  }
}
