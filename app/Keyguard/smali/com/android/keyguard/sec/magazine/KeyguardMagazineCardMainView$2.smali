.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;
.super Landroid/os/Handler;
.source "KeyguardMagazineCardMainView.java"


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
    .line 660
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 663
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 664
    .local v1, "messageObj":Ljava/lang/Object;
    if-nez v1, :cond_5

    .line 680
    :goto_4
    return-void

    :cond_5
    move-object v0, v1

    .line 667
    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 669
    .local v0, "magazineCard":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_20

    goto :goto_4

    .line 671
    :pswitch_e
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->addCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$100(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_4

    .line 674
    :pswitch_14
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->removeCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_4

    .line 677
    :pswitch_1a
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$2;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->updateCard(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$300(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_4

    .line 669
    :pswitch_data_20
    .packed-switch 0x3e9
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method
