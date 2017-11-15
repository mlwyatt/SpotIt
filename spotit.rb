# from __future__ import print_function
# from itertools import *
# import sys

# With thanks to: Neil G.
# http://stackoverflow.com/questions/6240113/what-are-the-mathematical-computational-principles-behind-this-game
#
def create_cards2(p)
  mf = p
  (2..(1+p**0.5).to_i).each do |i|
    if p % i == 0
      mf = i
      break
    end
  end
  cards = []
  (0...p).each do |i|
    cards << (i*p...(i+1)*p).to_a+[p*p]
  end
  (0...mf).each do |i|
    (0...p).each do |j|
      working = []
      (0...p).each do |k|
        working << k*p+(j+i*k)
      end
      cards << working + [p*p+1+i]
    end
  end
  working = []
  (0...mf+1).each do |i|
    working << p*p+i
  end
  cards << working
  return cards
end
#
#
# def check_cards(cards):
#     for card, other_card in combinations(cards, 2):
#         if len(card & other_card) != 1:
#             print("Cards", sorted(card), "and", sorted(other_card),
#                   "have intersection", sorted(card & other_card))
#
#
# def make_pdf_file(cards, npics, order):
#     from reportlab.pdfgen import canvas
#     from reportlab.lib.units import inch
#     from reportlab.lib.pagesizes import letter
#
#     Box_X = [0.5*inch,8.0*inch]
#     Box_Y = [10*inch,9*inch]
#     Box_Inc = 1.25*inch
#     Header_Text = "Spot It for {0} Cards and {1} Pictures - Order {2}".format(len(cards),npics,order)
#     Header_Loc = [4.25*inch, 10.25*inch]
#
#     c = canvas.Canvas("Spot-It - Order " + str(order) + ".pdf", pagesize=letter)
#     c.setFont("Times-Roman", 25)
#
#     c.drawCentredString(Header_Loc[0], Header_Loc[1], Header_Text)
#
#     ii = 0
#     CardNum = 1
#     # Print out the cards in a PDF file
#     for card in cards:
#         # Make a box to define each card
#         c.grid(Box_X, Box_Y)
#         c.drawString(Box_X[0] + .25*inch, Box_Y[0] - 0.6*inch, "Card " + str(CardNum))
#         c.drawString(Box_X[0] + 1.5*inch, Box_Y[0] - 0.6*inch, str(list(card)))
#
#         # Increment the box position for the next card
#         Box_Y[0] -= Box_Inc
#         Box_Y[1] -= Box_Inc
#         ii += 1
#         CardNum += 1
#
#         # Make a new page after every 8 cards
#         if not ii % 8:
#                 c.showPage()
#                 c.save()
#                 ii = 0
#                 Box_X = [0.5*inch,8.0*inch]
#                 Box_Y = [10*inch,9*inch]
#
#                 # Header for the next page
#                 c.setFont("Times-Roman", 25)
#                 c.drawCentredString(Header_Loc[0], Header_Loc[1], Header_Text )
#
#     #Save the last page
#     c.showPage()
#     c.save()
#
#
# #The algorythm only works for numbers where order is a prime number (E.g. [0, 1, 2, 3, 5, 7 , 11]
# order = 5
# print("Set of cards of order {0} \n\n".format(order))
# cards, num_pictures = create_cards(order)
# print("There are {0} cards and {1} pictures\n\n".format(len(cards),num_pictures))
# display_using_stars(cards, num_pictures)
# #display_using_numbers(cards, num_pictures)
# check_cards(cards)
#
# make_pdf_file(cards, num_pictures,order)