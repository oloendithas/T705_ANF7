.class Lcom/sec/android/app/contacts/widget/TutorialPopupView$8;
.super Ljava/lang/Object;
.source "TutorialPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 291
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$8;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$8;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$8;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;->onTouch()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$8;->this$0:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    # getter for: Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->access$000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    return-void
.end method
