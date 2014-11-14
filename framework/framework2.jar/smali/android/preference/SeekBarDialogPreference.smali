.class public Landroid/preference/SeekBarDialogPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarDialogPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarDialogPreference"


# instance fields
.field private mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, 0x10900bb

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 40
    invoke-virtual {p0}, Landroid/preference/SeekBarDialogPreference;->createActionButtons()V

    .line 43
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "dialogView"    # Landroid/view/View;

    .prologue
    .line 66
    const v0, 0x102038d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public createActionButtons()V
    .registers 2

    .prologue
    .line 49
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 50
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    .line 51
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 57
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v1, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 59
    iget-object v1, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_15
    return-void

    .line 61
    :cond_16
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15
.end method