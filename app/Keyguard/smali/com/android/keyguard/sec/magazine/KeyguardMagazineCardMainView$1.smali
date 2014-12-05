.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardMainView.java"

# interfaces
.implements Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cardAdded(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 5
    .param p1, "addedCard"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public cardRemoved(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 5
    .param p1, "removedCard"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method

.method public cardUpdated(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 5
    .param p1, "updatedCard"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mMagazineCardControlHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method
