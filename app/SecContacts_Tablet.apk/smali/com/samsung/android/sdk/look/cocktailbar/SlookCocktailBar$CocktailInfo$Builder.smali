.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;
.super Ljava/lang/Object;
.source "SlookCocktailBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:I

.field private mContentView:Landroid/widget/RemoteViews;

.field private mDisplayPolicy:I

.field private mFooterView:Landroid/widget/RemoteViews;

.field private mIcon:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mDisplayPolicy:I

    .line 73
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mCategory:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mIcon:I

    .line 82
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 83
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;-><init>()V

    .line 107
    .local v0, "cocktailInfo":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;
    iget v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mDisplayPolicy:I

    iput v1, v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->displayPolicy:I

    .line 108
    iget v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mCategory:I

    iput v1, v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->category:I

    .line 109
    iget v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mIcon:I

    iput v1, v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->icon:I

    .line 110
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->contentView:Landroid/widget/RemoteViews;

    .line 111
    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mFooterView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->footerView:Landroid/widget/RemoteViews;

    .line 112
    return-object v0
.end method

.method public setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mCategory:I

    .line 92
    return-object p0
.end method

.method public setDisplayPolicy(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;
    .locals 0
    .param p1, "displayPolicy"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mDisplayPolicy:I

    .line 87
    return-object p0
.end method

.method public setFooterView(Landroid/widget/RemoteViews;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;
    .locals 0
    .param p1, "footerView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mFooterView:Landroid/widget/RemoteViews;

    .line 102
    return-object p0
.end method

.method public setIcon(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;->mIcon:I

    .line 97
    return-object p0
.end method
