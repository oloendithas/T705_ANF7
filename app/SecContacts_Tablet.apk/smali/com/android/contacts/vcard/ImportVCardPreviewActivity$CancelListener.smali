.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
    .param p2, "x1"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 214
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 210
    return-void
.end method
