.class public Lcom/android/contacts/list/ContactTileImageContainer;
.super Landroid/widget/FrameLayout;
.source "ContactTileImageContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 37
    return-void
.end method
