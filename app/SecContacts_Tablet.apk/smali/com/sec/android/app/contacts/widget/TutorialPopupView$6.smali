.class Lcom/sec/android/app/contacts/widget/TutorialPopupView$6;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$6;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 270
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$6;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # invokes: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    invoke-static {v1, p2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;Landroid/view/MotionEvent;)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$6;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
