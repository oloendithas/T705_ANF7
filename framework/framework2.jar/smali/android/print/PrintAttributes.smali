.class public final Landroid/print/PrintAttributes;
.super Ljava/lang/Object;
.source "PrintAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintAttributes$Builder;,
        Landroid/print/PrintAttributes$Margins;,
        Landroid/print/PrintAttributes$Resolution;,
        Landroid/print/PrintAttributes$MediaSize;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_COLOR_MODES:I = 0x3


# instance fields
.field private mColorMode:I

.field private mMediaSize:Landroid/print/PrintAttributes$MediaSize;

.field private mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private mResolution:Landroid/print/PrintAttributes$Resolution;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1250
    new-instance v0, Landroid/print/PrintAttributes$1;

    invoke-direct {v0}, Landroid/print/PrintAttributes$1;-><init>()V

    sput-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_30

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_32

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v0

    :goto_1b
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_27

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    :cond_27
    iput-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 63
    return-void

    :cond_30
    move-object v0, v1

    .line 59
    goto :goto_f

    :cond_32
    move-object v0, v1

    .line 60
    goto :goto_1b
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintAttributes$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrintAttributes$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/print/PrintAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static colorModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "colorMode"    # I

    .prologue
    .line 1165
    packed-switch p0, :pswitch_data_c

    .line 1173
    const-string v0, "COLOR_MODE_UNKNOWN"

    :goto_5
    return-object v0

    .line 1167
    :pswitch_6
    const-string v0, "COLOR_MODE_MONOCHROME"

    goto :goto_5

    .line 1170
    :pswitch_9
    const-string v0, "COLOR_MODE_COLOR"

    goto :goto_5

    .line 1165
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method static enforceValidColorMode(I)V
    .registers 4
    .param p0, "colorMode"    # I

    .prologue
    .line 1178
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_24

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 1179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid color mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_24
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 253
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 254
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 256
    return-void
.end method

.method public copyFrom(Landroid/print/PrintAttributes;)V
    .registers 3
    .param p1, "other"    # Landroid/print/PrintAttributes;

    .prologue
    .line 262
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 263
    iget-object v0, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 264
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 265
    iget v0, p1, Landroid/print/PrintAttributes;->mColorMode:I

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 266
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    if-ne p0, p1, :cond_5

    .line 229
    :cond_4
    :goto_4
    return v1

    .line 198
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 199
    goto :goto_4

    .line 201
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 202
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 204
    check-cast v0, Landroid/print/PrintAttributes;

    .line 205
    .local v0, "other":Landroid/print/PrintAttributes;
    iget v3, p0, Landroid/print/PrintAttributes;->mColorMode:I

    iget v4, v0, Landroid/print/PrintAttributes;->mColorMode:I

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 206
    goto :goto_4

    .line 208
    :cond_20
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v3, :cond_2a

    .line 209
    iget-object v3, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v3, :cond_36

    move v1, v2

    .line 210
    goto :goto_4

    .line 212
    :cond_2a
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    move v1, v2

    .line 213
    goto :goto_4

    .line 215
    :cond_36
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v3, :cond_40

    .line 216
    iget-object v3, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v3, :cond_4c

    move v1, v2

    .line 217
    goto :goto_4

    .line 219
    :cond_40
    iget-object v3, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$MediaSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    move v1, v2

    .line 220
    goto :goto_4

    .line 222
    :cond_4c
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v3, :cond_56

    .line 223
    iget-object v3, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz v3, :cond_4

    move v1, v2

    .line 224
    goto :goto_4

    .line 226
    :cond_56
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iget-object v4, v0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 227
    goto :goto_4
.end method

.method public getColorMode()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    return v0
.end method

.method public getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    return-object v0
.end method

.method public getMinMargins()Landroid/print/PrintAttributes$Margins;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public getResolution()Landroid/print/PrintAttributes$Resolution;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 184
    const/16 v0, 0x1f

    .line 185
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 186
    .local v1, "result":I
    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    add-int/lit8 v1, v2, 0x1f

    .line 187
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v2, :cond_23

    move v2, v3

    :goto_f
    add-int v1, v4, v2

    .line 188
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v2, :cond_2a

    move v2, v3

    :goto_18
    add-int v1, v4, v2

    .line 189
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v4, :cond_31

    :goto_20
    add-int v1, v2, v3

    .line 190
    return v1

    .line 187
    :cond_23
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v2

    goto :goto_f

    .line 188
    :cond_2a
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$MediaSize;->hashCode()I

    move-result v2

    goto :goto_18

    .line 189
    :cond_31
    iget-object v3, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Resolution;->hashCode()I

    move-result v3

    goto :goto_20
.end method

.method public setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .prologue
    .line 150
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 151
    iput p1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 152
    return-void
.end method

.method public setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V
    .registers 2
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    .prologue
    .line 82
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 83
    return-void
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)V
    .registers 2
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    .prologue
    .line 124
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 125
    return-void
.end method

.method public setResolution(Landroid/print/PrintAttributes$Resolution;)V
    .registers 2
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintAttributes{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string/jumbo v1, "mediaSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v1, :cond_61

    .line 238
    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string/jumbo v1, "portrait"

    :goto_2b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :goto_2e
    const-string v1, ", resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", minMargins: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", colorMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 238
    :cond_5e
    const-string v1, "landscape"

    goto :goto_2b

    .line 241
    :cond_61
    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v0, :cond_2c

    .line 157
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    .line 162
    :goto_e
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz v0, :cond_30

    .line 163
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    .line 168
    :goto_1a
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v0, :cond_34

    .line 169
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    .line 174
    :goto_26
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void

    .line 160
    :cond_2c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 166
    :cond_30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 172
    :cond_34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26
.end method
