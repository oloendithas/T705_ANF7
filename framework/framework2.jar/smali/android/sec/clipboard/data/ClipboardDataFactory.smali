.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 2
    .param p0, "format"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    packed-switch p0, :pswitch_data_2a

    .line 94
    :goto_4
    return-object v0

    .line 64
    :pswitch_5
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 65
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 68
    :pswitch_b
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 69
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 72
    :pswitch_11
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 73
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 77
    :pswitch_17
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 78
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 81
    :pswitch_1d
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 82
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 86
    :pswitch_23
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    .line 87
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .line 61
    nop

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_23
    .end packed-switch
.end method
