.class final Lcom/android/keyguard/SlidingChallengeLayout$1;
.super Landroid/util/FloatProperty;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/keyguard/SlidingChallengeLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/keyguard/SlidingChallengeLayout;)Ljava/lang/Float;
    .registers 3
    .param p1, "view"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 171
    iget v0, p1, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 162
    check-cast p1, Lcom/android/keyguard/SlidingChallengeLayout;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$1;->get(Lcom/android/keyguard/SlidingChallengeLayout;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/keyguard/SlidingChallengeLayout;F)V
    .registers 3
    .param p1, "view"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p2, "value"    # F

    .prologue
    .line 165
    iput p2, p1, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 167
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 162
    check-cast p1, Lcom/android/keyguard/SlidingChallengeLayout;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/SlidingChallengeLayout$1;->setValue(Lcom/android/keyguard/SlidingChallengeLayout;F)V

    return-void
.end method
