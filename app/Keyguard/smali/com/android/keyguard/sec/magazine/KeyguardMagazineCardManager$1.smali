.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardMagazineCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.system.action.MAGAZINE_CARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_37

    .line 163
    const-string v3, "command"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 164
    .local v2, "type":I
    const-string v3, "card"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 166
    .local v1, "card":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    const-string v3, "KeyguardMagazineCardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    packed-switch v2, :pswitch_data_b8

    .line 198
    .end local v1    # "card":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .end local v2    # "type":I
    :cond_37
    :goto_37
    return-void

    .line 170
    .restart local v1    # "card":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .restart local v2    # "type":I
    :pswitch_38
    if-eqz v1, :cond_5a

    .line 171
    const-string v3, "KeyguardMagazineCardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : CARD_ADDED / RID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    invoke-virtual {v3, v6, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->notifyItemChanged(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_37

    .line 174
    :cond_5a
    const-string v3, "KeyguardMagazineCardManager"

    const-string v4, "onReceive : No card information"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 179
    :pswitch_62
    if-eqz v1, :cond_85

    .line 180
    const-string v3, "KeyguardMagazineCardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : CARD_UPDATED / RID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->notifyItemChanged(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_37

    .line 183
    :cond_85
    const-string v3, "KeyguardMagazineCardManager"

    const-string v4, "onReceive : No card information"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 188
    :pswitch_8d
    if-eqz v1, :cond_b0

    .line 189
    const-string v3, "KeyguardMagazineCardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : CARD_REMOVED / RID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->notifyItemChanged(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    goto :goto_37

    .line 192
    :cond_b0
    const-string v3, "KeyguardMagazineCardManager"

    const-string v4, "onReceive : No card information"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 168
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_38
        :pswitch_62
        :pswitch_8d
    .end packed-switch
.end method
