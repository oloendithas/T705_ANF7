.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$ItemView;
.super Landroid/widget/LinearLayout;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1445
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1446
    return-void
.end method

.method private findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 2

    .prologue
    .line 1474
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1475
    .local v0, "check":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 1476
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1478
    .end local v0    # "check":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "check":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$ItemView;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 1451
    .local v0, "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 1454
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 1459
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$ItemView;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 1460
    .local v0, "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 1461
    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1463
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 1467
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$ItemView;->findCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    .line 1468
    .local v0, "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 1471
    :cond_0
    return-void
.end method
