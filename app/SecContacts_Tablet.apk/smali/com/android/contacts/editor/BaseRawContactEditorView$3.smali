.class Lcom/android/contacts/editor/BaseRawContactEditorView$3;
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
    .line 256
    iput-object p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView$3;->this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 270
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 271
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 263
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView$3;->this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;

    const v2, 0x7f090408

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, "photo_thumbnail_view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_0
    return-void
.end method
