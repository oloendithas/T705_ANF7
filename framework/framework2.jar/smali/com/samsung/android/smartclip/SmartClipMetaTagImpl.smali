.class public Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
.super Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
.source "SmartClipMetaTagImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SmartClipMetaTagImpl"


# instance fields
.field protected mExtraData:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "extraData"    # [B

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 44
    iput-object p3, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getExtraData()[B
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setType(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "extraDataLen":I
    if-lez v0, :cond_1e

    .line 82
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 83
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 87
    :goto_1d
    return-void

    .line 85
    :cond_1e
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    if-eqz v0, :cond_1e

    .line 64
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    :goto_1d
    return-void

    .line 67
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d
.end method
