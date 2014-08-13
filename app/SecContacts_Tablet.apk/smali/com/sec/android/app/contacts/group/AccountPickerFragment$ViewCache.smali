.class final Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
.super Ljava/lang/Object;
.source "AccountPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/AccountPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewCache"
.end annotation


# instance fields
.field accountName:Landroid/widget/TextView;

.field accountType:Landroid/widget/TextView;

.field checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountType:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f090120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountName:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f09011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 254
    return-void
.end method
