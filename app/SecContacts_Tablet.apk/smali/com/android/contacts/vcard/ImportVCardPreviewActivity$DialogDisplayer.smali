.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;I)V
    .locals 0
    .param p2, "resId"    # I

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;->mResId:I

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/lang/String;)V
    .locals 1
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const v0, 0x7f09000d

    iput v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;->mResId:I

    .line 195
    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$002(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    iget v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 202
    :cond_0
    return-void
.end method
