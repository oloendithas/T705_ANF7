.class public final enum Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;
.super Ljava/lang/Enum;
.source "ContactPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/widget/ContactPhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TwScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

.field public static final enum center:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

.field public static final enum centerCrop:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

.field public static final enum centerInside:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

.field public static final enum fitCenter:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

.field public static final enum fitEnd:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

.field public static final enum fitStart:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

.field public static final enum fitXY:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

.field public static final enum matrix:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;


# instance fields
.field public final XmlName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    const-string v1, "center"

    const-string v2, "center"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->center:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    const-string v1, "centerCrop"

    const-string v2, "centerCrop"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->centerCrop:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    const-string v1, "centerInside"

    const-string v2, "centerInside"

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->centerInside:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    const-string v1, "fitCenter"

    const-string v2, "fitCenter"

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitCenter:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    .line 58
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    const-string v1, "fitEnd"

    const-string v2, "fitEnd"

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitEnd:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    const-string v1, "fitStart"

    const/4 v2, 0x5

    const-string v3, "fitStart"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitStart:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    const-string v1, "fitXY"

    const/4 v2, 0x6

    const-string v3, "fitXY"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitXY:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    const-string v1, "matrix"

    const/4 v2, 0x7

    const-string v3, "matrix"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->matrix:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    sget-object v1, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->center:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->centerCrop:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->centerInside:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitCenter:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitEnd:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitStart:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitXY:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->matrix:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->$VALUES:[Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "xmlName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static parse(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->center:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 86
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->centerCrop:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->centerInside:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 74
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitCenter:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 76
    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitEnd:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 78
    :cond_4
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitStart:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 80
    :cond_5
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->fitXY:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 82
    :cond_6
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->matrix:Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->XmlName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 85
    :cond_7
    const-string v0, "ContactPhotoView"

    const-string v1, "ScaleType must be one of imageview scaletype item"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;->$VALUES:[Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/contacts/widget/ContactPhotoView$TwScaleType;

    return-object v0
.end method
