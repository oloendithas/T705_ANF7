.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChoiceItem"
.end annotation


# instance fields
.field icon:Landroid/graphics/Bitmap;

.field id:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "i"    # I

    .prologue
    .line 12069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12070
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    .line 12071
    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    .line 12072
    iput p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 12073
    return-void
.end method
