.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$2;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->showFailureNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$2;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v2, 0x7f0e00de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1050
    return-void
.end method
