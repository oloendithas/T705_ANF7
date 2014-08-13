.class Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;
.super Ljava/lang/Object;
.source "TwGL3DTourMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 976
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    .line 977
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    const/4 v1, 0x0

    .line 980
    .local v1, "ret":I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_1

    .line 981
    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Killing mBackGroundThreadState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3202(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z

    .line 1018
    .end local v1    # "ret":I
    :cond_0
    :goto_1
    const-string v2, "3DAlign"

    const-string v3, "Working thread exited. Loop broken"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void

    .line 984
    .restart local v1    # "ret":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 985
    const-string v2, "3DAlign"

    const-string v3, "FINISH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 989
    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_nIAProgressCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v3

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->ImageAlignment(I)I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    move-result v1

    .line 993
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3108(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    goto :goto_2

    .line 995
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3202(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z

    goto :goto_1

    .line 997
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 999
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 1000
    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " RUN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v3

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->ImageAlignment(I)I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    move-result v1

    .line 1002
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3108(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    .line 1006
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Runnable;

    move-result-object v3

    monitor-enter v3

    .line 1008
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v8, :cond_5

    :try_start_1
    monitor-exit v3

    goto/16 :goto_1

    .line 1016
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1009
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-ne v2, v7, :cond_6

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1010
    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_7

    .line 1011
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1016
    :cond_7
    :goto_3
    :try_start_5
    monitor-exit v3

    goto/16 :goto_0

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method
