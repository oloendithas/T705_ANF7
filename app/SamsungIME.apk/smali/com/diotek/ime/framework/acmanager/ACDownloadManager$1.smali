.class Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->runDeviceSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceRegistered(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 181
    return-void
.end method

.method public swyperId(Ljava/lang/String;)V
    .locals 0
    .param p1, "swyperId"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method
