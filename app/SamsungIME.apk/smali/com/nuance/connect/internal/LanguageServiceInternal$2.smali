.class final Lcom/nuance/connect/internal/LanguageServiceInternal$2;
.super Ljava/util/HashMap;
.source "LanguageServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/LanguageServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[I>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 527
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 533
    const-string v0, "Afrikaans"

    new-array v1, v4, [I

    const/16 v2, 0x136

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v0, "Albanian"

    new-array v1, v4, [I

    const/16 v2, 0x11c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v0, "Amharic"

    new-array v1, v4, [I

    const/16 v2, 0x144

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v0, "Arabic"

    new-array v1, v4, [I

    const/16 v2, 0x101

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v0, "Armenian"

    new-array v1, v4, [I

    const/16 v2, 0x15a

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v0, "Assamese"

    new-array v1, v4, [I

    const/16 v2, 0x145

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v0, "Azerbaijani"

    new-array v1, v4, [I

    const/16 v2, 0x147

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v0, "Basque"

    new-array v1, v4, [I

    const/16 v2, 0x12d

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v0, "Belarusian"

    new-array v1, v4, [I

    const/16 v2, 0x123

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v0, "Bengali"

    new-array v1, v4, [I

    const/16 v2, 0x14b

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v0, "Bosnian"

    new-array v1, v4, [I

    const/16 v2, 0x197

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v0, "Bulgarian"

    new-array v1, v4, [I

    const/16 v2, 0x102

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v0, "Catalan"

    new-array v1, v4, [I

    const/16 v2, 0x103

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v0, "Chinese_CN"

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v0, "Chinese_HK"

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v0, "Chinese_TW"

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v0, "Croatian"

    new-array v1, v4, [I

    const/16 v2, 0x159

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v0, "Czech"

    new-array v1, v4, [I

    const/16 v2, 0x105

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v0, "Danish"

    new-array v1, v4, [I

    const/16 v2, 0x106

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v0, "Dutch_BE"

    new-array v1, v4, [I

    const/16 v2, 0x813

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v0, "Dutch"

    new-array v1, v4, [I

    const/16 v2, 0x113

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v0, "English"

    new-array v1, v4, [I

    const/16 v2, 0x109

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v0, "English_UK"

    new-array v1, v4, [I

    const/16 v2, 0x809

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v0, "English_Fake"

    new-array v1, v4, [I

    const v2, 0xf009

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v0, "Estonian"

    new-array v1, v4, [I

    const/16 v2, 0x125

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v0, "Farsi"

    new-array v1, v4, [I

    const/16 v2, 0x129

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v0, "Finnish"

    new-array v1, v4, [I

    const/16 v2, 0x10b

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v0, "French"

    new-array v1, v4, [I

    const/16 v2, 0x10c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v0, "French_CA"

    new-array v1, v4, [I

    const/16 v2, 0xc0c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v0, "French_CH"

    new-array v1, v4, [I

    const/16 v2, 0x100c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v0, "Galician"

    new-array v1, v4, [I

    const/16 v2, 0x155

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v0, "Georgian"

    new-array v1, v4, [I

    const/16 v2, 0x160

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v0, "German"

    new-array v1, v4, [I

    const/16 v2, 0x107

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v0, "Greek"

    new-array v1, v4, [I

    const/16 v2, 0x108

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v0, "Gujarati"

    new-array v1, v4, [I

    const/16 v2, 0x157

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v0, "Hausa"

    new-array v1, v4, [I

    const/16 v2, 0x158

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v0, "Hebrew"

    new-array v1, v4, [I

    const/16 v2, 0x10d

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v0, "Hindi"

    new-array v1, v4, [I

    const/16 v2, 0x139

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v0, "Hinglish"

    new-array v1, v4, [I

    const/16 v2, 0x1d0

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v0, "Hungarian"

    new-array v1, v4, [I

    const/16 v2, 0x10e

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v0, "Icelandic"

    new-array v1, v4, [I

    const/16 v2, 0x10f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v0, "Igbo"

    new-array v1, v4, [I

    const/16 v2, 0x195

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v0, "Indonesian"

    new-array v1, v4, [I

    const/16 v2, 0x121

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v0, "Irish"

    new-array v1, v4, [I

    const/16 v2, 0x154

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v0, "Italian"

    new-array v1, v4, [I

    const/16 v2, 0x110

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v0, "Italian_CH"

    new-array v1, v4, [I

    const/16 v2, 0x810

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v0, "Japanese"

    new-array v1, v4, [I

    const/16 v2, 0x111

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v0, "Javanese"

    new-array v1, v4, [I

    const/16 v2, 0x15f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v0, "Kannada"

    new-array v1, v4, [I

    const/16 v2, 0x163

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v0, "Kazakh"

    new-array v1, v4, [I

    const/16 v2, 0x161

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v0, "Khmer"

    new-array v1, v4, [I

    const/16 v2, 0x12c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v0, "Kirghiz"

    new-array v1, v4, [I

    const/16 v2, 0x166

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v0, "Korean"

    new-array v1, v5, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v0, "Latvian"

    new-array v1, v4, [I

    const/16 v2, 0x126

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v0, "Lingala"

    new-array v1, v4, [I

    const/16 v2, 0x168

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v0, "Lithuanian"

    new-array v1, v4, [I

    const/16 v2, 0x127

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v0, "Macedonian"

    new-array v1, v4, [I

    const/16 v2, 0x12f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v0, "Malagasy"

    new-array v1, v4, [I

    const/16 v2, 0x169

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v0, "Malay"

    new-array v1, v4, [I

    const/16 v2, 0x13e

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v0, "Malayalam"

    new-array v1, v4, [I

    const/16 v2, 0x16a

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v0, "Marathi"

    new-array v1, v4, [I

    const/16 v2, 0x16d

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v0, "Mongolian"

    new-array v1, v4, [I

    const/16 v2, 0x16b

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v0, "Norwegian"

    new-array v1, v4, [I

    const/16 v2, 0x114

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v0, "Oriya"

    new-array v1, v4, [I

    const/16 v2, 0x173

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v0, "Pashto"

    new-array v1, v4, [I

    const/16 v2, 0x175

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v0, "Polish"

    new-array v1, v4, [I

    const/16 v2, 0x115

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v0, "Portuguese"

    new-array v1, v4, [I

    const/16 v2, 0x116

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v0, "Portuguese_PT"

    new-array v1, v4, [I

    const/16 v2, 0x816

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v0, "Punjabi"

    new-array v1, v4, [I

    const/16 v2, 0x174

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v0, "Romanian"

    new-array v1, v4, [I

    const/16 v2, 0x118

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v0, "Russian"

    new-array v1, v4, [I

    const/16 v2, 0x119

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v0, "Serbian"

    new-array v1, v4, [I

    const/16 v2, 0x180

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v0, "Sesotho"

    new-array v1, v4, [I

    const/16 v2, 0x182

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v0, "Sinhala"

    new-array v1, v4, [I

    const/16 v2, 0x17c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v0, "Slovak"

    new-array v1, v4, [I

    const/16 v2, 0x11b

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v0, "Slovenian"

    new-array v1, v4, [I

    const/16 v2, 0x124

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v0, "Spanish"

    new-array v1, v4, [I

    const/16 v2, 0x10a

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v0, "Sundanese"

    new-array v1, v4, [I

    const/16 v2, 0x199

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v0, "Swahili"

    new-array v1, v4, [I

    const/16 v2, 0x141

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v0, "Swedish"

    new-array v1, v4, [I

    const/16 v2, 0x11d

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v0, "Tagalog"

    new-array v1, v4, [I

    const/16 v2, 0x189

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v0, "Tajik"

    new-array v1, v4, [I

    const/16 v2, 0x186

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v0, "Tamil"

    new-array v1, v4, [I

    const/16 v2, 0x184

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v0, "Telugu"

    new-array v1, v4, [I

    const/16 v2, 0x185

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v0, "Thai"

    new-array v1, v4, [I

    const/16 v2, 0x11e

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v0, "Turkish"

    new-array v1, v4, [I

    const/16 v2, 0x11f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v0, "Turkmen"

    new-array v1, v4, [I

    const/16 v2, 0x188

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v0, "Ukrainian"

    new-array v1, v4, [I

    const/16 v2, 0x122

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v0, "Urdu"

    new-array v1, v4, [I

    const/16 v2, 0x120

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v0, "Uzbek"

    new-array v1, v4, [I

    const/16 v2, 0x18f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v0, "UzbekLatin"

    new-array v1, v4, [I

    const/16 v2, 0x1c2

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v0, "Vietnamese"

    new-array v1, v4, [I

    const/16 v2, 0x12a

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v0, "Welsh"

    new-array v1, v4, [I

    const/16 v2, 0x14f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v0, "Xhosa"

    new-array v1, v4, [I

    const/16 v2, 0x134

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v0, "Yoruba"

    new-array v1, v4, [I

    const/16 v2, 0x193

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v0, "Zulu"

    new-array v1, v4, [I

    const/16 v2, 0x135

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    return-void

    .line 546
    nop

    :array_0
    .array-data 4
        0xe1
        0x5e1
    .end array-data

    .line 547
    :array_1
    .array-data 4
        0xe2
        0x6e2
        0x5e2
    .end array-data

    .line 548
    :array_2
    .array-data 4
        0xe0
        0x5e0
        0x6e0
    .end array-data

    .line 585
    :array_3
    .array-data 4
        0x112
        0x712
    .end array-data
.end method
