.class final Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public chatonCallDescription:Ljava/lang/String;

.field public chatonCallIcon:I

.field public chatonCallIntent:Landroid/content/Intent;

.field public chatonMsgDescription:Ljava/lang/String;

.field public chatonMsgIcon:I

.field public chatonMsgIntent:Landroid/content/Intent;

.field public chatonVTDescription:Ljava/lang/String;

.field public chatonVTIcon:I

.field public chatonVTIntent:Landroid/content/Intent;

.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public quanternaryDescription:Ljava/lang/String;

.field public quanternaryIcon:I

.field public quanternaryIntent:Landroid/content/Intent;

.field public quinticDescription:Ljava/lang/String;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public sexticDescription:Ljava/lang/String;

.field public sim2CallDescription:Ljava/lang/String;

.field public sim2CallIcon:I

.field public sim2CallIntent:Landroid/content/Intent;

.field public tertiaryDescription:Ljava/lang/String;

.field public tertiaryIcon:I

.field public tertiaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;

.field public viewContactDescription:Ljava/lang/String;

.field public viewContactIcon:I

.field public viewContactIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1520
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1522
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryIcon:I

    .line 1524
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1526
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1527
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryIcon:I

    .line 1528
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 1529
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 1530
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryIcon:I

    .line 1531
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    .line 1532
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryDescription:Ljava/lang/String;

    .line 1533
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quinticDescription:Ljava/lang/String;

    .line 1534
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sexticDescription:Ljava/lang/String;

    .line 1536
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallIcon:I

    .line 1537
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    .line 1538
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallDescription:Ljava/lang/String;

    .line 1541
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgIcon:I

    .line 1542
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgIntent:Landroid/content/Intent;

    .line 1543
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgDescription:Ljava/lang/String;

    .line 1545
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallIcon:I

    .line 1546
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallIntent:Landroid/content/Intent;

    .line 1547
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallDescription:Ljava/lang/String;

    .line 1549
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTIcon:I

    .line 1550
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTIntent:Landroid/content/Intent;

    .line 1551
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTDescription:Ljava/lang/String;

    .line 1554
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactIcon:I

    .line 1555
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactIntent:Landroid/content/Intent;

    .line 1556
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactDescription:Ljava/lang/String;

    .line 1560
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->text:Ljava/lang/String;

    .line 1561
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 1562
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 1563
    return-void
.end method


# virtual methods
.method public setChatOnCallAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallIntent:Landroid/content/Intent;

    .line 1593
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallDescription:Ljava/lang/String;

    .line 1594
    return-void
.end method

.method public setChatOnMsgAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgIntent:Landroid/content/Intent;

    .line 1588
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgDescription:Ljava/lang/String;

    .line 1589
    return-void
.end method

.method public setChatOnVTAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTIntent:Landroid/content/Intent;

    .line 1598
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTDescription:Ljava/lang/String;

    .line 1599
    return-void
.end method

.method public setQuanternaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    .line 1574
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryDescription:Ljava/lang/String;

    .line 1575
    return-void
.end method

.method public setQuinticAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNumber"    # Ljava/lang/String;

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quinticDescription:Ljava/lang/String;

    .line 1578
    return-void
.end method

.method public setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1566
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1567
    return-void
.end method

.method public setSexticAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNumber"    # Ljava/lang/String;

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sexticDescription:Ljava/lang/String;

    .line 1585
    return-void
.end method

.method public setSim2CallAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    .line 1581
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallDescription:Ljava/lang/String;

    .line 1582
    return-void
.end method

.method public setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 1570
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 1571
    return-void
.end method

.method public setViewContactAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactIntent:Landroid/content/Intent;

    .line 1603
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactDescription:Ljava/lang/String;

    .line 1604
    return-void
.end method
