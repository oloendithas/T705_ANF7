.class Lcom/sec/android/app/camera/CameraDirectConnectManager$1;
.super Ljava/lang/Object;
.source "CameraDirectConnectManager.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraDirectConnectManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDirectConnectManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraDirectConnectManager;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager$1;->this$0:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 7
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 60
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager$1;->this$0:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    # getter for: Lcom/sec/android/app/camera/CameraDirectConnectManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDirectConnectManager;->access$000(Lcom/sec/android/app/camera/CameraDirectConnectManager;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isEnableDirectConnect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const-string v1, "CameraDirectConnectManager"

    const-string v2, "Disable direct connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    .line 70
    :goto_0
    return-object v1

    .line 64
    :cond_0
    const-string v1, "CameraDirectConnectManager"

    const-string v2, "Enable direct connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "record":Landroid/nfc/NdefRecord;
    new-instance v0, Landroid/nfc/NdefRecord;

    .end local v0    # "record":Landroid/nfc/NdefRecord;
    const-string v1, "application/com.sec.android.directconnect"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-array v2, v5, [B

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager$1;->this$0:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    const-string v4, "application/com.sec.android.directconnect"

    # invokes: Lcom/sec/android/app/camera/CameraDirectConnectManager;->getMacData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/CameraDirectConnectManager;->access$100(Lcom/sec/android/app/camera/CameraDirectConnectManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 70
    .restart local v0    # "record":Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    new-array v2, v6, [Landroid/nfc/NdefRecord;

    aput-object v0, v2, v5

    const/4 v3, 0x1

    const-string v4, "com.sec.android.directconnect"

    invoke-static {v4}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_0
.end method
