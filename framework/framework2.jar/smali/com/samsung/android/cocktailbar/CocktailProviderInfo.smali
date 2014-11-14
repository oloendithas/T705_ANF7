.class public Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
.super Ljava/lang/Object;
.source "CocktailProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COCKTAIL_CATEGORY:Ljava/lang/String; = "category"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x2

.field public static final COCKTAIL_CATEGORY_NORMAL:I = 0x1

.field public static final COCKTAIL_CATEGORY_QUICK_TOOL:I = 0x3

.field private static final COCKTAIL_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COCKTAIL_ICON:Ljava/lang/String; = "icon"

.field private static final COCKTAIL_LABEL:Ljava/lang/String; = "label"

.field private static final COCKTAIL_PREVIEW_IMAGE:Ljava/lang/String; = "previewImage"

.field private static final COCKTAIL_UPDATE_TIME:Ljava/lang/String; = "updatePeriodMillis"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CocktailProviderInfo"

.field private static final XMLVAL_CONTEXTUAL:Ljava/lang/String; = "contextual"

.field private static final XMLVAL_NORMAL:Ljava/lang/String; = "normal"

.field private static final XMLVAL_QUICK_TOOL:Ljava/lang/String; = "quicktool"


# instance fields
.field public category:I

.field public description:I

.field public icon:I

.field public label:I

.field public previewImage:I

.field public provider:Landroid/content/ComponentName;

.field public updatePeriodMillis:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "provider"    # Landroid/content/ComponentName;
    .param p5, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p6, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 111
    const-string v1, "icon"

    invoke-interface {p5, v5, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 112
    const-string v1, "label"

    invoke-interface {p5, v5, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 113
    const-string v1, "description"

    invoke-interface {p5, v5, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 114
    const-string v1, "category"

    const-string/jumbo v2, "normal"

    invoke-direct {p0, p5, p3, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "category":Ljava/lang/String;
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 116
    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 125
    :goto_34
    const-string/jumbo v1, "previewImage"

    invoke-interface {p5, v5, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 126
    const-string/jumbo v1, "updatePeriodMillis"

    invoke-direct {p0, p5, p3, v1, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 127
    return-void

    .line 117
    :cond_47
    const-string v1, "contextual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 118
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_34

    .line 119
    :cond_53
    const-string/jumbo v1, "quicktool"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 120
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_34

    .line 122
    :cond_60
    const-string v1, "CocktailProviderInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified an invalid catetory of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput v6, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_34
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 131
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 133
    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 95
    .local v2, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 96
    .local v3, "pkgRes":Landroid/content/res/Resources;
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;)V
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_15} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_15} :catch_29

    .line 104
    .end local v2    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v3    # "pkgRes":Landroid/content/res/Resources;
    :goto_15
    return-object v0

    .line 97
    :catch_16
    move-exception v7

    .line 98
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "CocktailProviderInfo"

    const-string v1, "failed to load find package"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1e
    const/4 v0, 0x0

    goto :goto_15

    .line 99
    :catch_20
    move-exception v7

    .line 100
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "CocktailProviderInfo"

    const-string v1, "XML resources failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 101
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_29
    move-exception v7

    .line 102
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "CocktailProviderInfo"

    const-string v1, "IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 173
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 175
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    .line 182
    .local v2, "value":I
    :goto_c
    return v2

    .line 176
    .end local v2    # "value":I
    :catch_d
    move-exception v0

    .line 177
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v2, p4

    .line 178
    .restart local v2    # "value":I
    goto :goto_c

    .line 180
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":I
    :cond_10
    invoke-interface {p1, v4, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_c
.end method

.method private loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 188
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 189
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 191
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    .line 201
    .local v2, "value":Ljava/lang/String;
    :cond_c
    :goto_c
    return-object v2

    .line 192
    .end local v2    # "value":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v2, p4

    .line 194
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_c

    .line 196
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":Ljava/lang/String;
    :cond_10
    invoke-interface {p1, v4, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2    # "value":Ljava/lang/String;
    if-nez v2, :cond_c

    .line 198
    move-object v2, p4

    goto :goto_c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_2c

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    :goto_d
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void

    .line 159
    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d
.end method
