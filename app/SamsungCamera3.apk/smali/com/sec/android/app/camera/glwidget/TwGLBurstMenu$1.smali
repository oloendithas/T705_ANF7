.class Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;
.super Ljava/lang/Object;
.source "TwGLBurstMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->DBUpdatebyThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 776
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 777
    .local v4, "values":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 778
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "values":Landroid/content/ContentValues;
    check-cast v4, Landroid/content/ContentValues;

    .line 779
    .restart local v4    # "values":Landroid/content/ContentValues;
    const-string v5, "_data"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, "mTargetName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    .local v1, "mFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 783
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    const/4 v6, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBusrtShotSavingCompleted:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$402(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Z)Z

    .line 784
    const-string v5, "TwGLBurstMenu"

    const-string v6, "lastImage is not exists phisically yet"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 789
    .local v0, "imageValues":[Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 790
    const-string v5, "TwGLBurstMenu"

    const-string v6, "db insert E"

    invoke-static {v5, v6}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 792
    const-string v5, "TwGLBurstMenu"

    const-string v6, "db insert X"

    invoke-static {v5, v6}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->lastImageUpdate(Landroid/content/ContentValues;)V

    .line 797
    .end local v0    # "imageValues":[Landroid/content/ContentValues;
    .end local v1    # "mFile":Ljava/io/File;
    .end local v2    # "mTargetName":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    const/4 v6, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;
    invoke-static {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 802
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_2
    return-void

    .line 786
    .restart local v1    # "mFile":Ljava/io/File;
    .restart local v2    # "mTargetName":Ljava/lang/String;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    const/4 v6, 0x1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBusrtShotSavingCompleted:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$402(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Z)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    .end local v1    # "mFile":Ljava/io/File;
    .end local v2    # "mTargetName":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 799
    .local v3, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "TwGLBurstMenu"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    const v6, 0x7f0b0192

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 795
    .end local v3    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string v5, "TwGLBurstMenu"

    const-string v6, "DBupdateStack is Empty"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
