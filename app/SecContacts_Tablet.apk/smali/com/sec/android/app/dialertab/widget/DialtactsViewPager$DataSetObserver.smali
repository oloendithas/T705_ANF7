.class Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;
.super Ljava/lang/Object;
.source "DialtactsViewPager.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;)V
    .locals 0

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$1;

    .prologue
    .line 1781
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;-><init>(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;)V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->dataSetChanged()V

    .line 1785
    return-void
.end method
