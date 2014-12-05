.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->unlockAndLaunchApplication()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 174
    :try_start_1
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "onDismiss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-nez v2, :cond_17

    .line 193
    :goto_16
    return v4

    .line 179
    :cond_17
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$100(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/samsung/android/magazinecard/MagazineCardRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget-object v1, v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 180
    .local v1, "launchIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_34

    .line 181
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "unlockAndLaunchApplication : launch intent is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_16

    .line 190
    .end local v1    # "launchIntent":Landroid/app/PendingIntent;
    :catch_2b
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "Cannot send pending intent due to : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "launchIntent":Landroid/app/PendingIntent;
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_37
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_34 .. :try_end_37} :catch_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_2b

    goto :goto_16

    .line 187
    :catch_38
    move-exception v0

    .line 188
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_39
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "dismissKeyguard remoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_2b

    goto :goto_16
.end method
