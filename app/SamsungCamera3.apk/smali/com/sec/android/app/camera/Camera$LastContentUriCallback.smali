.class Lcom/sec/android/app/camera/Camera$LastContentUriCallback;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastContentUriCallback"
.end annotation


# instance fields
.field private mKeyValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "keyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16830
    .local p3, "rectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16831
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    .line 16832
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 22

    .prologue
    .line 16835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-nez v1, :cond_1

    .line 16836
    const-string v1, "Camera3"

    const-string v2, "onCompleted: mEngine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 17015
    :cond_0
    :goto_0
    return-void

    .line 16844
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 16845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 16847
    const-string v1, "quickview"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "reviewon"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 16848
    :cond_2
    const-string v1, "reviewon"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 16850
    :try_start_0
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUDDY_PHOTO_SHARING"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16851
    .local v14, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16852
    const-string v1, "FACE_IMAGE_URI"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16853
    const-string v1, "FACE_IMAGE_MODIFIED_DATE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getLastDateTaken()J

    move-result-wide v2

    invoke-virtual {v14, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 16854
    const-string v1, "FACE_IMAGE_PATH"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16855
    const-string v1, "FACE_IMAGE_SIZE"

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v14, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 16856
    const-string v1, "startApp"

    const-string v2, "camera"

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v14}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 16905
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 16862
    :cond_3
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 16863
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16866
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 16868
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16869
    const-string v1, "useUriList"

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 16871
    .local v21, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 16872
    const-string v1, "uriListData"

    move-object/from16 v0, v21

    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 16873
    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16884
    .end local v21    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromCover:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$7400(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16886
    const-string v1, "createdByCovermode"

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16889
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromLockScreen:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$7500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16891
    :cond_6
    const-string v1, "createdByLockscreen"

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16894
    :cond_7
    const-string v1, "from-Camera"

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16896
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v14}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 16897
    :catch_0
    move-exception v12

    .line 16898
    .local v12, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "Camera3"

    const-string v2, "Gallery was disabled!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 16899
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_0

    .line 16876
    .end local v12    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 16877
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16878
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 16880
    :cond_9
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 16906
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_a
    const-string v1, "from_app"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 16908
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 16911
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsFromSNote:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$7600(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 16912
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 16913
    .local v13, "extras":Landroid/os/Bundle;
    const-string v1, "bitmap-data"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16915
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 16916
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v1, "inline-data"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16917
    invoke-virtual {v14, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 16918
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x7d1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v14}, Lcom/sec/android/app/camera/Camera;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 16923
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_c
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 16924
    .local v18, "newExtras":Landroid/os/Bundle;
    const-string v1, "fromApp"

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$7700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 16942
    const-string v1, "output"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$7700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16943
    const/16 v19, 0x0

    .line 16945
    .local v19, "outputStream":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 16946
    .local v9, "dir":Ljava/io/File;
    :try_start_2
    const-string v1, "content"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$7700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "media"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$7700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 16948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$7700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 16950
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 16951
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 16952
    .local v20, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v9    # "dir":Ljava/io/File;
    .local v10, "dir":Ljava/io/File;
    move-object v9, v10

    .line 16954
    .end local v10    # "dir":Ljava/io/File;
    .end local v20    # "path":Ljava/lang/String;
    .restart local v9    # "dir":Ljava/io/File;
    :cond_d
    if-eqz v7, :cond_e

    .line 16955
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    move-object v10, v9

    .line 16961
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v9    # "dir":Ljava/io/File;
    .restart local v10    # "dir":Ljava/io/File;
    :goto_3
    if-eqz v10, :cond_17

    .line 16962
    :try_start_3
    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    .line 16963
    .local v11, "dir_path":Ljava/lang/String;
    if-eqz v11, :cond_17

    .line 16964
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16965
    .end local v10    # "dir":Ljava/io/File;
    .restart local v9    # "dir":Ljava/io/File;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 16966
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 16970
    .end local v11    # "dir_path":Ljava/lang/String;
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$7700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v19

    .line 16972
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v15

    .line 16973
    .local v15, "lastCaptureData":Lcom/sec/android/app/camera/CaptureData;
    if-eqz v15, :cond_10

    .line 16974
    invoke-virtual {v15}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v16

    .line 16976
    .local v16, "lastCaptureRawData":[B
    if-eqz v16, :cond_10

    .line 16977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, v16

    # setter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camera;->access$7802(Lcom/sec/android/app/camera/Camera;[B)[B

    .line 16980
    .end local v16    # "lastCaptureRawData":[B
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$7800(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v1

    if-eqz v1, :cond_11

    .line 16981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$7800(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 16984
    :cond_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16988
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 16996
    .end local v9    # "dir":Ljava/io/File;
    .end local v15    # "lastCaptureData":Lcom/sec/android/app/camera/CaptureData;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$8000(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 16997
    const-string v1, "skip-savediscard"

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17000
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v17

    .line 17001
    .local v17, "location":Landroid/location/Location;
    if-eqz v17, :cond_13

    .line 17002
    const-string v1, "latitude"

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 17003
    const-string v1, "longitude"

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 17005
    :cond_13
    const-string v1, "takenTime"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getLastDateTaken()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 17007
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 17008
    .local v8, "cropIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/CommonEngine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17011
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 16958
    .end local v8    # "cropIntent":Landroid/content/Intent;
    .end local v17    # "location":Landroid/location/Location;
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    :cond_14
    :try_start_5
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$7700(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v9    # "dir":Ljava/io/File;
    .restart local v10    # "dir":Ljava/io/File;
    goto/16 :goto_3

    .line 16985
    .end local v10    # "dir":Ljava/io/File;
    .restart local v9    # "dir":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 16988
    :goto_6
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    :goto_7
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 16990
    .end local v9    # "dir":Ljava/io/File;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mReturnUri:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$7900(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 16991
    const-string v1, "return-uri"

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 16993
    :cond_16
    const-string v1, "return-data"

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 16988
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "dir":Ljava/io/File;
    .restart local v9    # "dir":Ljava/io/File;
    goto :goto_7

    .line 16985
    .end local v9    # "dir":Ljava/io/File;
    .restart local v10    # "dir":Ljava/io/File;
    :catch_2
    move-exception v1

    move-object v9, v10

    .end local v10    # "dir":Ljava/io/File;
    .restart local v9    # "dir":Ljava/io/File;
    goto :goto_6

    .line 16858
    .end local v9    # "dir":Ljava/io/File;
    .end local v18    # "newExtras":Landroid/os/Bundle;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    goto/16 :goto_1

    .restart local v10    # "dir":Ljava/io/File;
    .restart local v18    # "newExtras":Landroid/os/Bundle;
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    :cond_17
    move-object v9, v10

    .end local v10    # "dir":Ljava/io/File;
    .restart local v9    # "dir":Ljava/io/File;
    goto/16 :goto_4
.end method
