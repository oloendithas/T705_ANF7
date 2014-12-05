.class Lcom/android/keyguard/MultiPaneChallengeLayout$1;
.super Ljava/lang/Object;
.source "MultiPaneChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$1;->this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$1;->this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->hideBouncer()V

    .line 71
    return-void
.end method
