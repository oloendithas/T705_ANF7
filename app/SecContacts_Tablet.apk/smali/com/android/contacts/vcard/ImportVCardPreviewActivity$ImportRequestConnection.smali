.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/android/contacts/vcard/VCardService;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
    .param p2, "x1"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 233
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 234
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    invoke-static {v0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$200(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "VCardImportPreview"

    const-string v1, "Connected to VCardService. Kick a vCard cache thread (uri: %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$200(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->getSourceUris()[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    invoke-static {v0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$200(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 244
    const-string v0, "VCardImportPreview"

    const-string v1, "Disconnected from VCardService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public sendImportRequest(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/vcard/ImportRequest;>;"
    const-string v0, "VCardImportPreview"

    const-string v1, "Send an import request"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->mService:Lcom/android/contacts/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    iget-object v1, v1, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/vcard/VCardService;->handleImportRequest(Ljava/util/List;Lcom/android/contacts/vcard/VCardImportExportListener;)V

    .line 229
    return-void
.end method
