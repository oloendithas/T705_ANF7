.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field final synthetic val$config:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V
    .locals 0

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;->val$config:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTopIndex:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTopOffset:I
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;->val$config:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;->loadSelection(III)V

    .line 1137
    const-string v0, "feature_tablet_selection_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mOrientationSyncListener:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;->val$config:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$OrientationSyncListener;->getGroupIDsOnActionMode(I)V

    .line 1140
    :cond_0
    return-void
.end method
