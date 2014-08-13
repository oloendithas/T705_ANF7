.class public Lcom/diotek/ime/implement/view/chinesespell/SpellView;
.super Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;
.source "SpellView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    return-void
.end method
