.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;
.super Ljava/lang/Exception;
.source "ImportVCardPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanceledException"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;->this$1:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;
    .param p2, "x1"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;)V

    return-void
.end method
