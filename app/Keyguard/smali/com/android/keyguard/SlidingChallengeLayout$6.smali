.class Lcom/android/keyguard/SlidingChallengeLayout$6;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$6;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 210
    :cond_e
    return-void
.end method
