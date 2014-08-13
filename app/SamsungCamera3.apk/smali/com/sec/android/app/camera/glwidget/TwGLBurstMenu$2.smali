.class Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;
.super Ljava/lang/Object;
.source "TwGLBurstMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->DBUpdatebyThreadDuringLowSaving()V
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
    .line 809
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 812
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 813
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "values":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 815
    .restart local v2    # "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 816
    .local v0, "imageValues":[Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 817
    const-string v3, "TwGLBurstMenu"

    const-string v4, "db insert E"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 819
    const-string v3, "TwGLBurstMenu"

    const-string v4, "db insert X"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->lastImageUpdate(Landroid/content/ContentValues;)V

    .line 824
    .end local v0    # "imageValues":[Landroid/content/ContentValues;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 829
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 822
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v3, "TwGLBurstMenu"

    const-string v4, "BackUpDBupdateStack is Empty"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 826
    .local v1, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "TwGLBurstMenu"

    const-string v4, "Not enough space in database"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    const v4, 0x7f0b0192

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
