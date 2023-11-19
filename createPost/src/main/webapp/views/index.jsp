<%-- 
    Document   : index
    Created on : Nov 4, 2023, 12:40:54 AM
    Author     : Admin
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/main.css">
         <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/post.css">
         <script>
             function toggleForms() {
             var form = document.getElementById("newForm");
            if (form.style.display === "none") {
                form.style.display = "block";
            } else {
                form.style.display = "none";
            }
        }
         </script>
        <script src="https://kit.fontawesome.com/ef7e2b893b.js" crossorigin="anonymous"></script>
        <title>social</title>
    </head>
    <body>
        
        <nav class="navbar">
            <div class="nav-left"><img class="logo" src="images/logo_1.png" alt="">
                <ul class="navlogo">
                    <li class="circle"><img class="icon" src="/createPost/images/notification_1.png"></li>
                    <li class="circle" onclick="FriendRequestToggle()"><img class="icon" src="/createPost/images/friends_1.png"></li>
                    <li class="circle"><img class="icon" src="/createPost/images/messenger.png"></li>
                  

                </ul>


            </div>

            <div class="friend-requests">
                <div class="request">
                    <img src="/createPost/images/friend.png">
                    <p>kết bạn</p>
                    <p>kết bạn</p>
                    <p>kết bạn</p>
                    <p>ket ban</p>
                </div>
            </div>

            <div class="nav-right">
                <div class="search-box">
                    <img src="/createPost/images/search.png" alt="">
                    <input type="text" placeholder="Search">
                </div>
                <div class="profile-image online" onclick="UserSettingToggle()">
                    <img src="/createPost/images/profile-pic.png" alt="">
                </div>

            </div>
            <div class="user-settings">
                <div class="profile-darkButton">
                    <div class="user-profile">
                        <img src="/createPost/images/profile-pic.png" alt="">
                        <div>
                            <p> Alex Carry</p>
                            <a href="#">See your profile</a>
                        </div>
                    </div>
                    <div id="dark-button" onclick="darkModeON()">
                        <span></span>
                    </div>
                </div>
                <hr>
                <div class="user-profile">
                    <img src="/createPost/images/feedback.png" alt="">
                    <div>
                        <p> Give Feedback</p>
                        <a href="#">Help us to improve</a>
                    </div>
                </div>
                <hr>
                <div class="settings-links">
                    <img src="/createPost/images/setting.png" alt="" class="settings-icon">
                    <a href="#">Settings & Privary <img src="/createPost/images/arrow.png" alt=""></a>
                </div>

                <div class="settings-links">
                    <img src="/createPost/images/help.png" alt="" class="settings-icon">
                    <a href="#">Help & Support <img src="/createPost/images/arrow.png" alt=""></a>
                </div>

                <div class="settings-links">
                    <img src="/createPost/images/Display.png" alt="" class="settings-icon">
                    <a href="#">Display & Accessibility <img src="/createPost/images/arrow.png" alt=""></a>
                </div>

                <div class="settings-links">
                    <img src="/createPost/images/logout.png" alt="" class="settings-icon">
                    <a href="#">Logout <img src="images/arrow.png" alt=""></a>
                </div>

            </div>
        </nav>

        <!-- content-area------------ -->

        <div class="container">
<!--            <div class="left-sidebar">
                <div class="important-links">
                    <a href="#"><img src="images/news.png" alt="">Latest News</a>
                    <a href="#"><img src="images/friends.png" alt="">Friends</a>
                    <a href="#"><img src="images/group.png" alt="">Groups</a>
                    <a href="#"><img src="images/watch.png" alt="">Watch</a>
                    <a href="#">Xem thêm</a>
                </div>

                <div class="shortcut-links">
                    <p>Lối tắt của bạn</p>
                    <a href="#"> <img src="images/supercity.png" alt="">Supercity</a>
                    <a href="#"> <img src="images/monster-legends.png" alt="">Monster Legends</a>
                    <a href="#"> <img src="images/sguJ2EE.png" alt="">SGU-J2EE</a>
                    <a href="#"> <img src="images/snake.png" alt="">snake.io</a>
                </div>
            </div>-->

            <!-- main-content------- -->

            <div class="content-area">
                <!-- <div class="story-gallery">
                    <div class="story story1">
                        <img src="images/upload.png" alt="">
                        <p>Post Story</p>
                    </div>
                    <div class="story story2">
                        <img src="images/member-1.png" alt="">
                        <p>Alison</p>
                    </div>
                    <div class="story story3">
                        <img src="images/member-2.png" alt="">
                        <p>Jackson</p>
                    </div>
                    <div class="story story4">
                        <img src="images/member-3.png" alt="">
                        <p>Samona</p>
                    </div>
                    <div class="story story5">
                        <img src="images/member-4.png" alt="">
                        <p>John</p>
                    </div>
                </div> -->

                <div class="write-post-container" id="existingForm">
                    <div class="user-profile">
                        <img src="/createPost/images/profile-pic.png" alt="">
                        <div>
                             <button name="post" class="postContent" onclick="toggleForms()">Bạn đang nghĩ gì?</button>
                        </div>
                    </div>

                    <div class="post-upload-textarea">
                        
                       
                        
                        <div class="add-post-links">
                            <a href="#"><img src="/createPost/images/live-video.png" alt="">Live Video</a>
                            <a href="#"><img src="/createPost/images/photo.png" alt="">Photo/Video</a>
                            <a href="#"><img src="/createPost/images/feeling.png" alt="">Feeling Activity</a>
                        </div>
                    </div>
                    
                    <div id="newForm" style="display:none;">
                        <div class="container">
                        <div class="wrapper">
                          <section class="post">
                            <header>Create Post</header>
                            <form action="postController" method="post" enctype="multipart/form-data" >
                                <input type="hidden" name="username" value="2">
                              <div class="content">
                                <img src="/createPost/images/TD.jpg" alt="logo">
                                <div class="details">

                                  <div class="privacy">
                                    <i class="fas fa-user-friends"></i>
                                    <span>Friends</span>
                                    <i class="fas fa-caret-down"></i>
                                  </div>
                                </div>
                              </div>
                                <textarea id="content" name="content" placeholder="Bạn đang nghĩ gì?" spellcheck="false" required ></textarea>

                                <img id="selectedImage" style="max-width: 450px; " src="" alt="" >
                              <div class="theme-emoji">
                                <img src="/createPost/images/theme.svg" alt="theme">
                                <img src="/createPost/images/smile.svg" alt="smile">
                              </div>
                              <div class="options">
                                <p>Add to Your Post</p>
                                <ul class="list">

                                    <li><div class="gallery"><input name="image" type="file" id="imageInput" onchange="displaySelectedImage(event)" alt="Submit" ">
                                            <img src="/createPost/images/gallery.svg" alt="gallery"> comment </div></li>

                                    <li><img src="/createPost/images/emoji.svg" alt="gallery"></li>
                                  <li><img src="/createPost/images/mic.svg" alt="gallery"></li>
                                  <li><img src="/createPost/images/more.svg" alt="gallery"></li>
                                </ul>
                              </div>
                                    <button type="submit">Post</button>
                          </form>

                          </section>
                          <section class="audience">
                            <header>
                              <div class="arrow-back"><i class="fas fa-arrow-left"></i></div>
                              <p>Select Audience</p>
                            </header>
                            <div class="content">
                              <p>Who can see your post?</p>
                              <span>Your post will show up in News Feed, on your profile and in search results.</span>
                            </div>
                            <ul class="list">
                              <li>
                                <div class="column">
                                  <div class="icon"><i class="fas fa-globe-asia"></i></div>
                                  <div class="details">
                                    <p>Public</p>
                                    <span>Anyone on or off Facebook</span>
                                  </div>
                                </div>
                                <div class="radio"></div>
                              </li>
                              <li class="active">
                                <div class="column">
                                  <div class="icon"><i class="fas fa-user-friends"></i></div>
                                  <div class="details">
                                    <p>Friends</p>
                                    <span>Your friends on Facebook</span>
                                  </div>
                                </div>
                                <div class="radio"></div>
                              </li>
                              <li>
                                <div class="column">
                                  <div class="icon"><i class="fas fa-user"></i></div>
                                  <div class="details">
                                    <p>Specific</p>
                                    <span>Only show to some friends</span>
                                  </div>
                                </div>
                                <div class="radio"></div>
                              </li>
                              <li>
                                <div class="column">
                                  <div class="icon"><i class="fas fa-lock"></i></div>
                                  <div class="details">
                                    <p>Only me</p>
                                    <span>Only you can see your post</span>
                                  </div>
                                </div>
                                <div class="radio"></div>
                              </li>
                              <li>
                                <div class="column">
                                  <div class="icon"><i class="fas fa-cog"></i></div>
                                  <div class="details">
                                    <p>Custom</p>
                                    <span>Include and exclude friends</span>
                                  </div>
                                </div>
                                <div class="radio"></div>
                              </li>
                            </ul>
                          </section>
                        </div>
                      </div>
                    </div>
                    
                </div>

                <div class="status-field-container write-post-container">
                    <div class="user-profile-box">
                        <div class="user-profile">
                            <img src="/createPost/images/profile-pic.png" alt="">
                            <div>
                                <p> Alex Carry</p>
                                <small>August 13 1999, 09.18 pm</small>
                            </div>
                        </div>
                        <div>
                            <a href="#"><i class="fas fa-ellipsis-v"></i></a>
                        </div>
                    </div>
                    <div class="status-field">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis dolores praesentium dicta
                            laborum nihil accusantium odit laboriosam, sed sit autem! <a
                                href="#">#This_Post_is_Better!!!!</a> </p>
                        <img src="/createPost/images/feed-image-1.png" alt="">

                    </div>
                    <div class="post-reaction">
                        <div class="activity-icons">
                            <div><img src="/createPost/images/like-blue.png" alt="">120</div>
                            <div><img src="/createPost/images/comments.png" alt="">52</div>
                            <div><img src="/createPost/images/share.png" alt="">35</div>
                        </div>
                        <div class="post-profile-picture">
                            <img src="/createPost/images/profile-pic.png " alt=""> <i class=" fas fa-caret-down"></i>
                        </div>
                    </div>
                </div>
                <div class="status-field-container write-post-container">
                    <div class="user-profile-box">
                        <div class="user-profile">
                            <img src="/createPost/images/profile-pic.png" alt="">
                            <div>
                                <p> Alex Carry</p>
                                <small>August 13 1999, 09.18 pm</small>
                            </div>
                        </div>
                        <div>
                            <a href="#"><i class="fas fa-ellipsis-v"></i></a>
                        </div>
                    </div>
                    <div class="status-field">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis dolores praesentium dicta
                            laborum nihil accusantium odit laboriosam, sed sit autem! <a
                                href="#">#This_Post_is_Bigger!!!!</a> </p>
                        <img src="/createPost/images/feed-image-2.png" alt="">

                    </div>
                    <div class="post-reaction">
                        <div class="activity-icons">
                            <div><img src="/createPost/images/like-blue.png" alt="">120</div>
                            <div><img src="/createPost/images/comments.png" alt="">52</div>
                            <div><img src="/createPost/images/share.png" alt="">35</div>
                        </div>
                        <div class="post-profile-picture">
                            <img src="/createPost/images/profile-pic.png " alt=""> <i class=" fas fa-caret-down"></i>
                        </div>
                    </div>
                </div>
                <div class="status-field-container write-post-container">
                    <div class="user-profile-box">
                        <div class="user-profile">
                            <img src="/createPost/images/profile-pic.png" alt="">
                            <div>
                                <p> Alex Carry</p>
                                <small>August 13 1999, 09.18 pm</small>
                            </div>
                        </div>
                        <div>
                            <a href="#"><i class="fas fa-ellipsis-v"></i></a>
                        </div>
                    </div>
                    <div class="status-field">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis dolores praesentium dicta
                            laborum nihil accusantium odit laboriosam, sed sit autem! <a
                                href="#">#This_Post_is_faster!!!!</a> </p>
                        <img src="/createPost/images/feed-image-3.png" alt="">

                    </div>
                    <div class="post-reaction">
                        <div class="activity-icons">
                            <div><img src="/createPost/images/like-blue.png" alt="">120</div>
                            <div><img src="/createPost/images/comments.png" alt="">52</div>
                            <div><img src="/createPost/images/share.png" alt="">35</div>
                        </div>
                        <div class="post-profile-picture">
                            <img src="/createPost/images/profile-pic.png " alt=""> <i class=" fas fa-caret-down"></i>
                        </div>
                    </div>
                </div>
                <div class="status-field-container write-post-container">
                    <div class="user-profile-box">
                        <div class="user-profile">
                            <img src="/createPost/images/profile-pic.png" alt="">
                            <div>
                                <p> Alex Carry</p>
                                <small>August 13 1999, 09.18 pm</small>
                            </div>
                        </div>
                        <div>
                            <a href="#"><i class="fas fa-ellipsis-v"></i></a>
                        </div>
                    </div>
                    <div class="status-field">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis dolores praesentium dicta
                            laborum nihil accusantium odit laboriosam, sed sit autem! <a
                                href="#">#This_Post_is_perfect!!!!</a> </p>
                        <img src="/createPost/images/feed-image-4.png" alt="">

                    </div>
                    <div class="post-reaction">
                        <div class="activity-icons">
                            <div><img src="/createPost/images/like-blue.png" alt="">120</div>
                            <div><img src="/createPost/images/comments.png" alt="">52</div>
                            <div><img src="/createPost/images/share.png" alt="">35</div>
                        </div>
                        <div class="post-profile-picture">
                            <img src="/createPost/images/profile-pic.png " alt=""> <i class=" fas fa-caret-down"></i>
                        </div>
                    </div>
                </div>
                <button type="button" class="btn-LoadMore" onclick="LoadMoreToggle()">Load More</button>
            </div>

           
            </div>
        </div>
        <footer id="footer">
            <p>&copy; Copyright 2021 - Socialbook All Rights Reserved</p>
        </footer>

        <script src="<%=request.getContextPath()%>/templates/function.js"></script>
    </body>
</html>
