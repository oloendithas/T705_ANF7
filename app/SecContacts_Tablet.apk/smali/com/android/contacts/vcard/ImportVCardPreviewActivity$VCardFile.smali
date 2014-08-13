.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VCardFile"
.end annotation


# instance fields
.field private final mCanonicalPath:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "lastModified"    # J

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;->mName:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;->mCanonicalPath:Ljava/lang/String;

    .line 176
    return-void
.end method


# virtual methods
.method public getCanonicalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;->mCanonicalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;->mName:Ljava/lang/String;

    return-object v0
.end method
