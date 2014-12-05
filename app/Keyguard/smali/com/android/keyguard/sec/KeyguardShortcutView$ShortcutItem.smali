.class public Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
.super Landroid/widget/LinearLayout;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutItem"
.end annotation


# instance fields
.field private mClsName:Ljava/lang/String;

.field private mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsDummy:Z

.field private mItemPadding:I

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .registers 17
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "isNotDummy"    # Z

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    .line 541
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 543
    if-nez p4, :cond_83

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    .line 545
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 546
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f03002a

    const/4 v1, 0x1

    invoke-virtual {v9, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 548
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 549
    .local v10, "mRoot":Landroid/widget/LinearLayout;
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    .line 551
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mItemPadding:I

    .line 558
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I
    invoke-static {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$502(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I

    move-result v0

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I
    invoke-static {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$402(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I

    .line 564
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 565
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$400(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_66
    # invokes: Lcom/android/keyguard/sec/KeyguardShortcutView;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {p1, p3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$700(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_85

    .line 569
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 570
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_7f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 638
    :goto_82
    return-void

    .line 543
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "mRoot":Landroid/widget/LinearLayout;
    :cond_83
    const/4 v0, 0x0

    goto :goto_8

    .line 576
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v10    # "mRoot":Landroid/widget/LinearLayout;
    :cond_85
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    .line 577
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 580
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$800()Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$900()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" and class=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 585
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_f1

    .line 586
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    .line 589
    :cond_ee
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 594
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_f1
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 595
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_112

    .line 596
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 597
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_10d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    goto/16 :goto_82

    .line 601
    :cond_112
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {p1, v11}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # invokes: Lcom/android/keyguard/sec/KeyguardShortcutView;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1100(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 605
    :try_start_126
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 607
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_166

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0600c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_160
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_126 .. :try_end_160} :catch_192

    .line 637
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto/16 :goto_82

    .line 611
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_166
    :try_start_166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0600c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_191
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_166 .. :try_end_191} :catch_192

    goto :goto_160

    .line 616
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_192
    move-exception v8

    .line 617
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_160
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .registers 2

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    return v0
.end method

.method public onPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->onPressed(Z)V

    .line 650
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "onTouch()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-nez v19, :cond_2a

    .line 679
    const/16 v19, 0x0

    .line 819
    :goto_29
    return v19

    .line 682
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_36

    .line 689
    :cond_36
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 690
    .local v15, "touchedEventX":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    .line 692
    .local v16, "touchedEventY":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_70

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "faded out"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/16 v19, 0x0

    goto :goto_29

    .line 697
    :cond_70
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 698
    .local v4, "action":I
    packed-switch v4, :pswitch_data_3a4

    .line 815
    :cond_77
    :goto_77
    const-string v19, "ShortcutWidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 819
    const/16 v19, 0x1

    goto :goto_29

    .line 701
    :pswitch_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "action down"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F
    invoke-static {v0, v15}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1702(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1902(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    # invokes: Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    .line 712
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    if-eqz v19, :cond_77

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_77

    .line 718
    :pswitch_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1902(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    goto/16 :goto_77

    .line 721
    :pswitch_11b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "action up/cancel mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    cmpg-double v19, v19, v21

    if-gez v19, :cond_17f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-ltz v19, :cond_19c

    :cond_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_201

    .line 726
    :cond_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    if-eqz v19, :cond_201

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2502(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 730
    new-instance v19, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 744
    :cond_201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_77

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    # invokes: Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    .line 746
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    if-eqz v19, :cond_77

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_77

    .line 754
    :pswitch_244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 758
    const/4 v5, 0x0

    .line 759
    .local v5, "diffX":I
    const/4 v6, 0x0

    .line 764
    .local v6, "diffY":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v17, v19, 0x2

    .line 765
    .local v17, "viewCenterX":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v18, v19, 0x2

    .line 766
    .local v18, "viewCenterY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 769
    int-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    add-double v9, v19, v21

    .line 771
    .local v9, "distance_square":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 772
    .local v7, "distance":D
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L

    div-double v13, v19, v21

    .line 773
    .local v13, "threshold":D
    div-double v11, v7, v13

    .line 778
    .local v11, "mDistanceRatio":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1700(Lcom/android/keyguard/sec/KeyguardShortcutView;)F

    move-result v19

    sub-float v19, v15, v19

    move/from16 v0, v19

    float-to-int v5, v0

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)F

    move-result v19

    sub-float v19, v16, v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    int-to-double v0, v5

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1902(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_320

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_MOVE mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_77

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    if-eqz v19, :cond_77

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    # setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2502(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    .line 793
    new-instance v19, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_77

    .line 698
    :pswitch_data_3a4
    .packed-switch 0x0
        :pswitch_96
        :pswitch_11b
        :pswitch_244
        :pswitch_10e
    .end packed-switch
.end method

.method public refreshBadgeCount()V
    .registers 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 671
    return-void
.end method

.method public setBadgeCount(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    .line 667
    return-void
.end method

.method public setOpacity(D)V
    .registers 4
    .param p1, "distanceRatio"    # D

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setDistanceRatio(D)V

    .line 654
    return-void
.end method
