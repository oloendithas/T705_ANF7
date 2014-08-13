.class Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$2;
.super Ljava/lang/Object;
.source "DoubleTapTutorialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->setListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->access$100(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->smoothScrollToPosition(I)V

    .line 175
    return-void
.end method
