.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;
.super Ljava/lang/Object;
.source "SlookCocktailBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo$Builder;
    }
.end annotation


# instance fields
.field public category:I

.field public contentView:Landroid/widget/RemoteViews;

.field public displayPolicy:I

.field public footerView:Landroid/widget/RemoteViews;

.field public icon:I

.field public orientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->orientation:I

    .line 60
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->displayPolicy:I

    .line 62
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->category:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailBar$CocktailInfo;->icon:I

    .line 70
    return-void
.end method
