.class public Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;
.super Ljava/lang/Object;
.source "GuideDialer.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)V
    .locals 0

    .prologue
    .line 2322
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2326
    const/4 v1, 0x0

    .line 2327
    .local v1, "nID":I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.android.contacts"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2328
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$ImageGetter;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2329
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2330
    return-object v0
.end method
