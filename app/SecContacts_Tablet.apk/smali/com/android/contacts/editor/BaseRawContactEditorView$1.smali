.class Lcom/android/contacts/editor/BaseRawContactEditorView$1;
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
    .line 220
    iput-object p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView$1;->this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 222
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 223
    .local v1, "view":Landroid/view/View;
    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 226
    iget-object v2, p0, Lcom/android/contacts/editor/BaseRawContactEditorView$1;->this$0:Lcom/android/contacts/editor/BaseRawContactEditorView;

    const v3, 0x7f090408

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "photo_thumbnail_view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 228
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_0
    return-void
.end method
