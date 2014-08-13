.class Lcom/android/contacts/editor/BaseRawContactEditorView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseRawContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/BaseRawContactEditorView;->setupAnimations(Lcom/android/contacts/editor/PhotoEditorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView$4;->this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000

    .line 280
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 281
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 283
    return-void
.end method
