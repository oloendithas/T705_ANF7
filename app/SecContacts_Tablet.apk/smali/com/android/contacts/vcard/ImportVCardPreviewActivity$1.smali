.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->importVCard([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

.field final synthetic val$uris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;[Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    new-instance v1, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;[Landroid/net/Uri;)V

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$202(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    .line 771
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    new-instance v1, Lcom/android/contacts/vcard/NotificationImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {v1, v2}, Lcom/android/contacts/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    .line 773
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    check-cast v0, Lcom/android/contacts/vcard/NotificationImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mShowImportedVcard:Z
    invoke-static {v1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$1100(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/NotificationImportExportListener;->showImportedVcard(Z)V

    .line 774
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 776
    :cond_0
    return-void
.end method
