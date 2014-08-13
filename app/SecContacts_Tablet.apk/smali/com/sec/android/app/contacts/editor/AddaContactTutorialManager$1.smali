.class Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager$1;
.super Ljava/lang/Object;
.source "AddaContactTutorialManager.java"

# interfaces
.implements Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager$1;->this$0:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager$1;->this$0:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    iget v0, v0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->mPhase:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager$1;->this$0:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->setPhase(I)V

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager$1;->this$0:Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->setPhase(I)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
